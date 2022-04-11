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
    private static Player _instance;
    public static Player Instance {
        get
        {
            if (_instance != null) return _instance;
            
            var singleton = FindObjectOfType<Player>();
            if (singleton != null) return _instance;
            
            var go = new GameObject();
            _instance = go.AddComponent<Player>();
            return _instance;
        }
    }
    
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
    public SimplePlayerUI SimplePlayerUI;
    public PlayerData PlayerData;
    
    #endregion
    

    private StringBuilder _debugMessage = new StringBuilder(600);

    public int CurrentDashCount;
    private float _dashTimerCooldown;
    private bool _collisionDown;
    private float _lastHitTime;
    private Color _baseColor;

    public GameObject BloodObject;
    public GameObject Hook;

    private void Awake()
    {
        if (_instance != null && _instance != this) Destroy(gameObject);
        else _instance = this;
        
        LineRenderer = GetComponent<LineRenderer>();
        Weapons = GetComponent<WeaponInventory>();
        Animator = GetComponentInChildren<Animator>();
        InputHandler = GetComponent<PlayerInputState>();
        HealthComponent = GetComponent<HealthComponent>();
        _rigidbody2D = GetComponentInParent<Rigidbody2D>();
        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        _baseColor = Renderer.material.GetColor("_BaseColor");
        _facingDirection = 1;
        _canSetVelocity = true;
        HealthComponent.IsDead = false;
        InitializeStateMachine();
    }

    private void InitializeProperties()
    {
        CurrentDashCount = PlayerData.MaximumDashCount;
        _dashTimerCooldown = PlayerData.DashCooldownTime;
        PlayerData.CurrentJumpCount = PlayerData.MaximumJumpCount;
        PlayerData.GrapplingAbilityActive = false;
        PlayerData.WallJumpAbilityActive = false;
    }

    private void InitializeStateMachine()
    {
        StateMachine = new PlayerStateMachine();

        IdleState = new PlayerIdleState(this, StateMachine, PlayerData);
        MoveState = new PlayerMoveState(this, StateMachine, PlayerData);
        DashState = new PlayerDashState(this, StateMachine, PlayerData);
        HardLandingState = new PlayerHardLandingState(this, StateMachine, PlayerData);
        InAirState = new PlayerInAirState(this, StateMachine, PlayerData);
        JumpState = new PlayerJumpState(this, StateMachine, PlayerData);
        LedgeClimbState = new PlayerLedgeClimbState(this, StateMachine, PlayerData);
        RunningState = new PlayerRunningState(this, StateMachine, PlayerData);
        SlideState = new PlayerSlideState(this, StateMachine, PlayerData);
        SoftLandingState = new PlayerSoftLandingState(this, StateMachine, PlayerData);
        WallGrabState = new PlayerWallGrabState(this, StateMachine, PlayerData);
        WallJumpState = new PlayerWallJumpState(this, StateMachine, PlayerData);
        GrapplingState = new PlayerGrapplingState(this, StateMachine, PlayerData);
    }

    private void InitializeHealth()
    {
        HealthComponent.OnDeath += OnPlayerDeath;
        HealthComponent.OnDamageTaken += Knockback;
        HealthComponent.OnDamageTaken += BlinkRed;
        HealthComponent.OnDamageTaken += BloodEffects;
        // Other component events exist here too, tag on to trigger animation/sound/FX
    }
    
    private void OnDisable()
    {
        HealthComponent.OnDeath -= OnPlayerDeath;
        HealthComponent.OnDamageTaken -= BlinkRed;
        HealthComponent.OnDamageTaken -= Knockback;
        HealthComponent.OnDamageTaken -= BloodEffects;
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

        ShowMenuAfterAnimationEnd();

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
            if (PlayerData == null || PlayerData.CanFireWeapon)
            {
                Weapons.EquippedWeapon.Fire();
            }
        }
        
        // todo switch weapons if input triggered
        // todo reload a weapon if design wants that
    }

    private void FixedUpdate()
    {
        PlayerData.Velocity = ((Vector2)transform.position - PlayerData.LastPosition) / Time.deltaTime;
        PlayerData.LastPosition = transform.position; // Calculates the true velocity (distance/time)
        
        StateMachine.CurrentState.PhysicsUpdate();
        CalculateGravity();
    }

    private void LastJumpPressed() //Updates last time space key was triggered.
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
        {
            PlayerData.LastTimeJumpKeyWasPressed = Time.time;
        }
    }

    private void TimedIncreaseDashCount() //Dash reset cooldown, only active when the player is not dashing and has their dash count lower than the maximum amount.
    {
        if (CurrentDashCount < 0) return;
        if (CurrentDashCount >= PlayerData.MaximumDashCount) return;

        _dashTimerCooldown -= Time.deltaTime;
        if (_dashTimerCooldown < 0)
        {
            CurrentDashCount++;
            _dashTimerCooldown = PlayerData.DashCooldownTime;
        }

    }

    private void CalculateJumpBuffer() //Checks to see if the last frame is coherent with the current information and updates the collision of last frame 
    {
        PlayerData.PlayerLandedThisFrame = false;
        var groundedCheck = Grounded;
        if (PlayerData.CollisionDown && !groundedCheck) PlayerData.TimePlayerStoppedGrounded = Time.time; 
        else if (!PlayerData.CollisionDown && groundedCheck)
        {
            PlayerData.CoyoteUsable = true;
            PlayerData.PlayerLandedThisFrame = true;
        }

        PlayerData.CollisionDown = groundedCheck;
    }
    
    private void CalculateGravity() //Always active, it calculates but does not set the gravity.
    {
        if (StateMachine.CurrentState != WallGrabState)
        {
            if(!PlayerData.CollisionDown)
            {
                var fallSpeed = PlayerData.EndedJumpEarly && PlayerData.CurrentVerticalSpeed > 0 ? PlayerData.CurrentFallSpeed * PlayerData.EndedJumpEarlyGravityModifier : PlayerData.CurrentFallSpeed;
            
                PlayerData.CurrentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;
            
                if (PlayerData.CurrentVerticalSpeed < PlayerData.FallClamped) PlayerData.CurrentVerticalSpeed = PlayerData.FallClamped;
            } 
        }
    }

    public void MovementClampedAndApex() //Calculate acceleration and clamps it, if in the air, apply the apex bonus. Otherwise decreases speed.
    {
        if (PlayerData.RawInputValue != 0)
        {
            PlayerData.CurrentHorizontalSpeed += PlayerData.RawInputValue * PlayerData.Acceleration * Time.deltaTime;
            
            PlayerData.CurrentHorizontalSpeed = Mathf.Clamp(PlayerData.CurrentHorizontalSpeed, -PlayerData.MoveClamped, PlayerData.MoveClamped);
            
            var apexBonus = Mathf.Sign(PlayerData.RawInputValue) * PlayerData.JumpApexSpeedBonus * PlayerData.ApexPoint;
            PlayerData.CurrentHorizontalSpeed += apexBonus * Time.deltaTime;
        }
        else
        {
            PlayerData.CurrentHorizontalSpeed = Mathf.MoveTowards(PlayerData.CurrentHorizontalSpeed, 0, PlayerData.Deceleration * Time.fixedDeltaTime);
        }
    }

    public void UpdateVelocity() //Set the velocity
    {
        SetVelocityY(PlayerData.CurrentVerticalSpeed);
        SetVelocityX(PlayerData.CurrentHorizontalSpeed);
    }

    private void SpeedResetOnCollisions()
    {
        if (PlayerData.CurrentHorizontalSpeed > 0 && WallFrontHit || PlayerData.CurrentHorizontalSpeed < 0 && WallBackHit)
        {
            PlayerData.CurrentHorizontalSpeed = 0;
        }
        
        if (PlayerData.CollisionDown)
        {
            if (PlayerData.CurrentVerticalSpeed < 0)
            {
                PlayerData.CurrentVerticalSpeed = 0;
                PlayerData.CurrentJumpCount = PlayerData.MaximumJumpCount;
            }
        }
    }
    
    float timer;
    float threshold = 0.2f;
    private void TimerForWallGrabJumps()
    {
        threshold = 0.05f;
        if (!PlayerData.CurrentlyWallJumping) return;
        timer += Time.fixedDeltaTime;
        
        if (timer > threshold)
        {
            PlayerData.CurrentlyWallJumping = false;
            timer = 0;
        }
    }

    public void UpdateStickyWallCollisions()
    {
        UpdateStickyWallBackHit();
        UpdateStickyWallFrontHit();
    }
    
    public bool WallStickyFrontHit { get { return WallStickyFrontHitResult; } }
    public RaycastHit2D WallStickyFrontHitResult { get; private set; }
    public void UpdateStickyWallFrontHit() { WallStickyFrontHitResult = Physics2D.Raycast(_rightWallCheck.position, Vector2.right * -_facingDirection, _wallCheckDistance, PlayerData.WallLayerMask); }

    public bool WallStickyBackHit { get { return WallStickyBackHitResult; } }
    public RaycastHit2D WallStickyBackHitResult { get; private set; }
    public void UpdateStickyWallBackHit() { WallStickyBackHitResult = Physics2D.Raycast(_leftWallCheck.position, Vector2.right * -_facingDirection, _wallCheckDistance, PlayerData.WallLayerMask); }

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
        Animator.SetBool(StateMachine.CurrentState.StateName,false);
        Animator.SetBool("dead",true);
        
        InputHandler.LockMouseInputs(true);
        InputHandler.LockPlayerInputs(true);
        
        Time.timeScale = 0;
        Debug.LogWarning("You died!");

        SimplePlayerUI.Active = true;

        //Play Death animation
    }

    private void Knockback(HealthComponent component, float value, GameObject hitter, Vector2 knockbackSpeed)
    {
        var direction = (transform.position - hitter.transform.position);
        var directionX = Mathf.Sign(direction.x);
        if (knockbackSpeed.x == 0)
        {
            PlayerData.CurrentHorizontalSpeed = directionX * PlayerData.KnockbackSpeed;
        }
        else
        {
            PlayerData.CurrentHorizontalSpeed = directionX * knockbackSpeed.x;
        }
        if (knockbackSpeed.y != 0)
        {
            PlayerData.CurrentVerticalSpeed = knockbackSpeed.y;
        }
    }

    private void BlinkRed(HealthComponent component, float value, GameObject arg3, Vector2  knockbackSpeed)
    {
        Renderer.material.SetColor("_BaseColor", Color.red);
        _lastHitTime = Time.time;
    }

    private void BloodEffects(HealthComponent component, float value, GameObject gameObject, Vector2 knockbackSpeed)
    {
        Animator.SetTrigger("hit");
        Instantiate(BloodObject, transform.position, Quaternion.Inverse(transform.rotation));
    }

    private void ResetColor()
    {
        var nextFireTime = _lastHitTime + 0.1f;
        if (Time.time - nextFireTime > 0)
        {
            Renderer.material.SetColor("_BaseColor", _baseColor);
        }
    }

    private void ShowMenuAfterAnimationEnd()
    {
        if (Animator.GetCurrentAnimatorStateInfo(0).IsName("Death"))
        {
            if (Animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1f)
            {
                if (SimplePlayerUI.Active && !SimplePlayerUI.RestartUI.activeSelf)
                {
                    SimplePlayerUI.EnableDeathMenu();
                }
            }
        }
    }

}