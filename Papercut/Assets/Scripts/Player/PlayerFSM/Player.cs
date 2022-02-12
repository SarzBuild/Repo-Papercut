using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

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

    private void Awake()
    {
        Animator = GetComponent<Animator>();
        InputHandler = GetComponent<PlayerInputState>();
        _rigidbody2D = GetComponentInParent<Rigidbody2D>();
        _facingDirection = 1;
        _canSetVelocity = true;
        
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
        StateMachine.Initialize(IdleState);
    }

    private void Update()
    {
        UpdateHitResults();
        ApplyVelocity();
        StateMachine.CurrentState.LogicUpdate();
        LogDebug();
    }

    private void FixedUpdate()
    {
        StateMachine.CurrentState.PhysicsUpdate();
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
