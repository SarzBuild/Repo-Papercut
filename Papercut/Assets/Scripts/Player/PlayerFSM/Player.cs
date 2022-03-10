using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEngine.InputSystem;
using Vector2 = UnityEngine.Vector2;

public class Player : AppliedPhysics
{
    public Transform WeaponHoldPosition;

    #region States

    public PlayerStateMachine StateMachine { get; private set; }
    public PlayerDashState DashState { get; private set; }
    public PlayerHardLandingState HardLandingState { get; private set; }
    public PlayerIdleState IdleState { get; private set; }
    public PlayerInAirState InAirState { get; private set; }
    public PlayerJumpState JumpState { get; private set; }
    public PlayerLedgeClimbState LedgeClimbState { get; private set; }
    public PlayerMoveState MoveState { get; private set; }
    public PlayerRunningState RunningState { get; private set; }
    public PlayerSlideState SlideState { get; private set; }
    public PlayerSoftLandingState SoftLandingState { get; private set; }
    public PlayerWallGrabState WallGrabState { get; private set; }
    public PlayerWallJumpState WallJumpState { get; private set; }
    public PlayerGrapplingState GrapplingState { get; private set; }

    #endregion

    #region Components

    public Animator Animator { get; private set; }
    public PlayerInputState InputHandler { get; private set; }
    public WeaponInventory Weapons { get; private set; }
    public LineRenderer LineRenderer { get; private set; }
    public HealthComponent HealthComponent { get; private set; }
    public SkinnedMeshRenderer Renderer { get; private set; }

    #endregion

    [SerializeField] private PlayerData _playerData;

    private StringBuilder _debugMessage = new StringBuilder(600);

    public int CurrentDashCount;
    private float _dashTimerCooldown;
    private bool _collisionDown;
    private float _lastHitTime;
    private Color _baseColor;

    private void Awake()
    {
        LineRenderer = GetComponent<LineRenderer>();
        Weapons = GetComponent<WeaponInventory>();
        Animator = GetComponent<Animator>();
        InputHandler = GetComponent<PlayerInputState>();
        HealthComponent = GetComponent<HealthComponent>();
        _rigidbody2D = GetComponentInParent<Rigidbody2D>();
        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        _baseColor = Renderer.material.GetColor("_BaseColor");
        _facingDirection = 1;
        _canSetVelocity = true;

        InitializeStateMachine();
    }

    private void InitializeProperties()
    {
        CurrentDashCount = _playerData.MaximumDashCount;
        _dashTimerCooldown = _playerData.DashCooldownTime;
        _playerData.CurrentJumpCount = _playerData.MaximumJumpCount;
    }

    private void InitializeStateMachine()
    {
        StateMachine = new PlayerStateMachine();

        IdleState = new PlayerIdleState(this, StateMachine, _playerData);
        MoveState = new PlayerMoveState(this, StateMachine, _playerData);
        DashState = new PlayerDashState(this, StateMachine, _playerData);
        HardLandingState = new PlayerHardLandingState(this, StateMachine, _playerData);
        InAirState = new PlayerInAirState(this, StateMachine, _playerData);
        JumpState = new PlayerJumpState(this, StateMachine, _playerData);
        LedgeClimbState = new PlayerLedgeClimbState(this, StateMachine, _playerData);
        RunningState = new PlayerRunningState(this, StateMachine, _playerData);
        SlideState = new PlayerSlideState(this, StateMachine, _playerData);
        SoftLandingState = new PlayerSoftLandingState(this, StateMachine, _playerData);
        WallGrabState = new PlayerWallGrabState(this, StateMachine, _playerData);
        WallJumpState = new PlayerWallJumpState(this, StateMachine, _playerData);
        GrapplingState = new PlayerGrapplingState(this, StateMachine, _playerData);
    }

    private void InitializeHealth()
    {
        HealthComponent.OnDeath += OnPlayerDeath;
        //HealthComponent.OnDamageTaken += Knockback;
        HealthComponent.OnDamageTaken += BlinkRed;
        // Other component events exist here too, tag on to trigger animation/sound/FX
    }
    
    private void OnDisable()
    {
        HealthComponent.OnDeath -= OnPlayerDeath;
        HealthComponent.OnDamageTaken -= BlinkRed;
    }

    private void Start()
    {
        InitializeProperties();
        InitializeHealth();
        StateMachine.Initialize(IdleState);
    }

    private void Update()
    {
        LastJumpPressed();
        StateMachine.CurrentState.LogicUpdate();
        UpdateHitResults();
        UpdateStickyWallCollisions();
        SpeedResetOnCollisions();
        
        TimedIncreaseDashCount();
        CalculateJumpBuffer();

        HandleWeapons();
        
        TimerForWallGrabJumps();

        ResetColor();

        //LogDebug();
    }

    private void HandleWeapons()
    {
        if (Weapons == null)
        {
            return;
        }

        if (Weapons.EquippedWeapon != null && InputHandler.ListenLMouseInput > 0)
        {
            if (_playerData == null || _playerData.CanFireWeapon)
            {
                Weapons.EquippedWeapon.Fire();
            }
        }
        
        // todo switch weapons if input triggered
        // todo reload a weapon if design wants that
    }

    private void FixedUpdate()
    {
        _playerData.Velocity = ((Vector2)transform.position - _playerData.LastPosition) / Time.deltaTime;
        _playerData.LastPosition = transform.position; // Calculates the true velocity (distance/time)
        
        StateMachine.CurrentState.PhysicsUpdate();
        CalculateGravity();
    }

    private void LastJumpPressed() //Updates last time space key was triggered.
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
        {
            _playerData.LastTimeJumpKeyWasPressed = Time.time;
        }
    }

    private void TimedIncreaseDashCount() //Dash reset cooldown, only active when the player is not dashing and has their dash count lower than the maximum amount.
    {
        if (CurrentDashCount < 0) return;
        if (CurrentDashCount >= _playerData.MaximumDashCount) return;

        _dashTimerCooldown -= Time.deltaTime;
        if (_dashTimerCooldown < 0)
        {
            CurrentDashCount++;
            _dashTimerCooldown = _playerData.DashCooldownTime;
        }

    }

    private void CalculateJumpBuffer() //Checks to see if the last frame is coherent with the current information and updates the collision of last frame 
    {
        _playerData.PlayerLandedThisFrame = false;
        var groundedCheck = Grounded;
        if (_playerData.CollisionDown && !groundedCheck) _playerData.TimePlayerStoppedGrounded = Time.time; 
        else if (!_playerData.CollisionDown && groundedCheck)
        {
            _playerData.CoyoteUsable = true;
            _playerData.PlayerLandedThisFrame = true;
        }

        _playerData.CollisionDown = groundedCheck;
    }
    
    private void CalculateGravity() //Always active, it calculates but does not set the gravity.
    {
        if (StateMachine.CurrentState != WallGrabState)
        {
            if(!_playerData.CollisionDown)
            {
                var fallSpeed = _playerData.EndedJumpEarly && _playerData.CurrentVerticalSpeed > 0 ? _playerData.CurrentFallSpeed * _playerData.EndedJumpEarlyGravityModifier : _playerData.CurrentFallSpeed;
            
                _playerData.CurrentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;
            
                if (_playerData.CurrentVerticalSpeed < _playerData.FallClamped) _playerData.CurrentVerticalSpeed = _playerData.FallClamped;
            } 
        }
    }

    public void MovementClampedAndApex() //Calculate acceleration and clamps it, if in the air, apply the apex bonus. Otherwise decreases speed.
    {
        if (_playerData.RawInputValue != 0)
        {
            _playerData.CurrentHorizontalSpeed += _playerData.RawInputValue * _playerData.Acceleration * Time.deltaTime;
            
            _playerData.CurrentHorizontalSpeed = Mathf.Clamp(_playerData.CurrentHorizontalSpeed, -_playerData.MoveClamped, _playerData.MoveClamped);
            
            var apexBonus = Mathf.Sign(_playerData.RawInputValue) * _playerData.JumpApexSpeedBonus * _playerData.ApexPoint;
            _playerData.CurrentHorizontalSpeed += apexBonus * Time.deltaTime;
        }
        else
        {
            _playerData.CurrentHorizontalSpeed = Mathf.MoveTowards(_playerData.CurrentHorizontalSpeed, 0, _playerData.Deceleration * Time.fixedDeltaTime);
        }
    }

    public void UpdateVelocity() //Set the velocity
    {
        SetVelocityY(_playerData.CurrentVerticalSpeed);
        SetVelocityX(_playerData.CurrentHorizontalSpeed);
    }

    private void SpeedResetOnCollisions()
    {
        if (_playerData.CurrentHorizontalSpeed > 0 && WallFrontHit || _playerData.CurrentHorizontalSpeed < 0 && WallBackHit)
        {
            _playerData.CurrentHorizontalSpeed = 0;
        }
        
        if (_playerData.CollisionDown)
        {
            if (_playerData.CurrentVerticalSpeed < 0)
            {
                _playerData.CurrentVerticalSpeed = 0;
                _playerData.CurrentJumpCount = _playerData.MaximumJumpCount;
            }
        }
    }
    
    float timer;
    float threshold = 0.2f;
    private void TimerForWallGrabJumps()
    {
        threshold = 0.05f;
        if (!_playerData.CurrentlyWallJumping) return;
        timer += Time.fixedDeltaTime;
        
        if (timer > threshold)
        {
            _playerData.CurrentlyWallJumping = false;
            timer = 0;
        }
    }
    
    public bool CheckForLayerWall()
    {
        if (WallBackHit)
        {
            for (int i = 0; i < WallBackHitResult.Length; i++)
            {
                if ((_playerData.WallLayerMask.value & (1 << WallBackHitResult[i].collider.gameObject.layer)) > 0)
                    return true;
            }
        }
        if (WallFrontHit)
        {
            for (int i = 0; i < WallFrontHitResult.Length; i++)
            {
                if ((_playerData.WallLayerMask.value & (1 << WallFrontHitResult[i].collider.gameObject.layer)) > 0)
                    return true;
            }
        }
        return false;
    }

    public void UpdateStickyWallCollisions()
    {
        UpdateStickyWallBackHit();
        UpdateStickyWallFrontHit();
    }
    
    public bool WallStickyFrontHit { get { return WallStickyFrontHitResult; } }
    public RaycastHit2D WallStickyFrontHitResult { get; private set; }
    public void UpdateStickyWallFrontHit() { WallStickyFrontHitResult = Physics2D.Raycast(_rightWallCheck.position, Vector2.right * -_facingDirection, _wallCheckDistance, _playerData.WallLayerMask); }

    public bool WallStickyBackHit { get { return WallStickyBackHitResult; } }
    public RaycastHit2D WallStickyBackHitResult { get; private set; }
    public void UpdateStickyWallBackHit() { WallStickyBackHitResult = Physics2D.Raycast(_leftWallCheck.position, Vector2.right * -_facingDirection, _wallCheckDistance, _playerData.WallLayerMask); }

    private void LogDebug()
    {
        _debugMessage.Clear();
        _debugMessage.AppendFormat("State: {0}\nGrounded [{1}] | Ceiling [{2}] | WallFront [{3}] | WallBack [{4}]\n", 
            StateMachine.CurrentState.StateName, 
            Grounded, CeilingHit, WallFrontHit, WallBackHit);
        InputHandler.AppendDebugMessage(ref _debugMessage);
        Debug.Log(_debugMessage.ToString());
    }

    private void OnPlayerDeath(HealthComponent component, GameObject killer)
    {
        if (killer != null)
        {
            Debug.Log(string.Format("Player killed by {0}", killer.name));
        }

        Debug.LogWarning("You died!");
        Destroy(gameObject); // gameover
    }

    private void Knockback(HealthComponent component, float value)
    {
        var direction = (transform.position - component.transform.position);
        var directionX = Mathf.Sign(direction.x);
        Debug.Log(transform.position + " " + component.transform.position);
        SetVelocityX(directionX * _playerData.KnockbackSpeed);
    }

    private void BlinkRed(HealthComponent component, float value)
    {
        Renderer.material.SetColor("_BaseColor", Color.red);
        _lastHitTime = Time.time;
    }

    private void ResetColor()
    {
        var nextFireTime = _lastHitTime + 0.1f;
        if (Time.time - nextFireTime > 0)
        {
            Renderer.material.SetColor("_BaseColor", _baseColor);
        }
    }
}
