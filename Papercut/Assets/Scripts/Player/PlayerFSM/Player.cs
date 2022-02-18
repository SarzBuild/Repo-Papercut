using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;
using UnityEngine.InputSystem;
using Vector2 = UnityEngine.Vector2;

public class Player : AppliedPhysics
{
    #region States
    public PlayerStateMachine StateMachine { get; private set; }
    public PlayerDashState DashState { get; private set; }
    public PlayerHardLandingState HardLandingState { get; private set; }
    public PlayerIdleState IdleState { get; private set; }
    public PlayerInAirState InAirState { get; private set; }
    public PlayerJumpState JumpState { get; private set; }
    public PlayerLedgeClimbState LedgeClimbState { get; private set; }
    public PlayerMoveState MoveState { get; private set; }
    public PlayerRollState RollState { get; private set; }
    public PlayerRunningState RunningState { get; private set; }
    public PlayerSlideState SlideState { get; private set; }
    public PlayerSoftLandingState SoftLandingState { get; private set; }
    public PlayerWallGrabState WallGrabState { get; private set; }
    public PlayerWallJumpState WallJumpState { get; private set; }
    #endregion

    #region Components
    public Animator Animator { get; private set; }
    public PlayerInputState InputHandler { get; private set; }
    #endregion
    
    [SerializeField] private PlayerData _playerData;

    private StringBuilder _debugMessage = new StringBuilder(500);

    public int CurrentDashCount;
    private float _dashTimerCooldown;
    private bool _collisionDown;


    private void Awake()
    {
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

        IdleState = new PlayerIdleState(this, StateMachine, _playerData, "idle");
        MoveState = new PlayerMoveState(this, StateMachine, _playerData, "move");
        DashState = new PlayerDashState(this, StateMachine, _playerData, "dash");
        HardLandingState = new PlayerHardLandingState(this, StateMachine, _playerData, "hardLand");
        InAirState = new PlayerInAirState(this, StateMachine, _playerData, "inAir");
        JumpState = new PlayerJumpState(this, StateMachine, _playerData, "jump");
        LedgeClimbState = new PlayerLedgeClimbState(this, StateMachine, _playerData, "ledgeClimb");
        RollState = new PlayerRollState(this, StateMachine, _playerData, "roll");
        RunningState = new PlayerRunningState(this, StateMachine, _playerData, "running");
        SlideState = new PlayerSlideState(this, StateMachine, _playerData, "slide");
        SoftLandingState = new PlayerSoftLandingState(this, StateMachine, _playerData,"softLand");
        WallGrabState = new PlayerWallGrabState(this, StateMachine, _playerData, "wallGrab");
        WallJumpState = new PlayerWallJumpState(this, StateMachine, _playerData, "wallJump"); 
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
        
        
        LogDebug();
    }

    private void FixedUpdate()
    {
        _playerData.Velocity = ((Vector2)transform.position - _playerData._lastPosition) / Time.deltaTime;
        _playerData._lastPosition = transform.position;
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
            var fallSpeed = _playerData._endedJumpEarly && _playerData._currentVerticalSpeed > 0 ? _playerData._fallSpeed * _playerData._jumpEndEarlyGravityModifier : _playerData._fallSpeed;
            
            _playerData._currentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;
            
            if (_playerData._currentVerticalSpeed < _playerData._fallClamp) _playerData._currentVerticalSpeed = _playerData._fallClamp;
        }
    }

    public void MovementClampedAndApex()
    {
        if (_playerData.RawInputValue != 0)
        {
            _playerData._currentHorizontalSpeed += _playerData.RawInputValue * _playerData._acceleration * Time.deltaTime;
            
            _playerData._currentHorizontalSpeed = Mathf.Clamp(_playerData._currentHorizontalSpeed, -_playerData._moveClamp, _playerData._moveClamp);
            
            var apexBonus = Mathf.Sign(_playerData.RawInputValue) * _playerData._apexBonus * _playerData._apexPoint;
            _playerData._currentHorizontalSpeed += apexBonus * Time.deltaTime;
        }
        else
        {
            _playerData._currentHorizontalSpeed = Mathf.MoveTowards(_playerData._currentHorizontalSpeed, 0, _playerData._deAcceleration * Time.deltaTime);
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
