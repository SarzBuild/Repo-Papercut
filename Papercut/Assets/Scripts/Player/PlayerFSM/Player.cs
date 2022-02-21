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
    
    #endregion

    #region Components
    public Animator Animator { get; private set; }
    public PlayerInputState InputHandler { get; private set; }
    public WeaponInventory Weapons { get; private set; }
    #endregion
    
    [SerializeField] private PlayerData _playerData;

    private StringBuilder _debugMessage = new StringBuilder(500);

    public int CurrentDashCount;
    private float _dashTimerCooldown;
    private bool _collisionDown;


    private void Awake()
    {
        Weapons = GetComponent<WeaponInventory>();
        Animator = GetComponent<Animator>();
        InputHandler = GetComponent<PlayerInputState>();
        _rigidbody2D = GetComponentInParent<Rigidbody2D>();
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
        
    }
    

    private void Start()
    {
        InitializeProperties();
        StateMachine.Initialize(IdleState);
    }

    private void Update()
    {
        LastJumpPressed();
        StateMachine.CurrentState.LogicUpdate();
        UpdateHitResults();
        SpeedResetOnCollisions();
        
        TimedIncreaseDashCount();
        CalculateJumpBuffer();

        HandleWeapons();
        
        TimerForWallGrabJumps();
        
        //LogDebug();
    }

    private void HandleWeapons()
    {
        if (Weapons == null)
        {
            return;
        }

        if (Weapons.EquippedWeapon != null && InputHandler.ListenLMouseInput() > 0)
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
        _playerData.LastPosition = transform.position;
        
        StateMachine.CurrentState.PhysicsUpdate();
        CalculateGravity();
    }

    private void LastJumpPressed()
    {
        if (Keyboard.current.spaceKey.wasPressedThisFrame)
        {
            _playerData._lastJumpPressed = Time.time;
        }
    }

    private void TimedIncreaseDashCount()
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

    private void CalculateJumpBuffer()
    {
        _playerData.LandingThisFrame = false;
        var groundedCheck = Grounded;
        if (_playerData.CollisionDown && !groundedCheck) _playerData._timeLeftGrounded = Time.time; 
        else if (!_playerData.CollisionDown && groundedCheck)
        {
            _playerData._coyoteUsable = true;
            _playerData.LandingThisFrame = true;
        }

        _playerData.CollisionDown = groundedCheck;
    }
    
    private void CalculateGravity()
    {
        if(!_playerData.CollisionDown)
        {
            var fallSpeed = _playerData._endedJumpEarly && _playerData._currentVerticalSpeed > 0 ? _playerData.CurrentFallSpeed * _playerData._jumpEndEarlyGravityModifier : _playerData.CurrentFallSpeed;
            
            _playerData._currentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;
            
            if (_playerData._currentVerticalSpeed < _playerData.FallClamped) _playerData._currentVerticalSpeed = _playerData.FallClamped;
        }
    }

    public void MovementClampedAndApex()
    {
        if (_playerData.RawInputValue != 0)
        {
            _playerData._currentHorizontalSpeed += _playerData.RawInputValue * _playerData.Acceleration * Time.deltaTime;
            
            _playerData._currentHorizontalSpeed = Mathf.Clamp(_playerData._currentHorizontalSpeed, -_playerData.MoveClamped, _playerData.MoveClamped);
            
            var apexBonus = Mathf.Sign(_playerData.RawInputValue) * _playerData.JumpApexBonus * _playerData._apexPoint;
            _playerData._currentHorizontalSpeed += apexBonus * Time.deltaTime;
        }
        else
        {
            _playerData._currentHorizontalSpeed = Mathf.MoveTowards(_playerData._currentHorizontalSpeed, 0, _playerData.Deceleration * Time.deltaTime);
        }
    }

    public void UpdateVelocity()
    {
        SetVelocityY(_playerData._currentVerticalSpeed);
        SetVelocityX(_playerData._currentHorizontalSpeed);
    }

    private void SpeedResetOnCollisions()
    {
        if (_playerData._currentHorizontalSpeed > 0 && WallFrontHit || _playerData._currentHorizontalSpeed < 0 && WallBackHit)
        {
            _playerData._currentHorizontalSpeed = 0;
        }
        
        if (_playerData.CollisionDown)
        {
            if (_playerData._currentVerticalSpeed < 0)
            {
                _playerData._currentVerticalSpeed = 0;
                _playerData.CurrentJumpCount = _playerData.MaximumJumpCount;
            }
        }
    }
    
    float timer;
    float threshold = 0.2f;
    private void TimerForWallGrabJumps()
    {
        threshold = 0.2f;
        if (!_playerData.WallJumping) return;
        timer += Time.fixedDeltaTime;
        
        if (timer > threshold)
        {
            _playerData.WallJumping = false;
            timer = 0;
        }
    }
    
    private void LogDebug()
    {
        _debugMessage.Clear();
        _debugMessage.AppendFormat("State: {0}\nGrounded [{1}] | Ceiling [{2}] | WallFront [{3}] | WallBack [{4}] | LedgeHorizontal [{5}] | LedgeVertical [{6}]\n", 
            StateMachine.CurrentState.StateName, 
            Grounded, CeilingHit, WallFrontHit, WallBackHit, LedgeHorizontalHit, LedgeVerticalHit);
        InputHandler.AppendDebugMessage(ref _debugMessage);
        Debug.Log(_debugMessage.ToString());
    }
}
