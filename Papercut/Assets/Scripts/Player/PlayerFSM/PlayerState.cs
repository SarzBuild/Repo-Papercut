using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum PlayerStateId
{
    [StateName("idle")] Idle = 0,
    [StateName("move")] Move,
    [StateName("running")] Running,
    [StateName("dash")] Dash,
    [StateName("jump")] Jump,
    [StateName("inAir")] InAir,
    [StateName("slide")] Slide,
    [StateName("softLand")] SoftLanding,
    [StateName("hardLand")] HardLanding,
    [StateName("ledgeClimb")] LedgeClimb,
    [StateName("wallGrab")] WallGrab,
    [StateName("wallJump")] WallJump,
    [StateName("grappling")] Grappling,
    [StateName("dead")] Death,
    [StateName("attacks")] Attack,
    [StateName("damaged")] Damaged
}

public class PlayerState
{
    protected Player Player;
    protected PlayerStateMachine StateMachine;
    protected PlayerData PlayerData;
    
    protected bool IsAnimationFinished;
    protected bool IsExitingState;
    
    protected float StartTime;

    public PlayerStateId Id { get; }
    public string StateName { get { return _stateName; } }
    private string _stateName;
    
    public PlayerState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, PlayerStateId id)
    {
        this.Player = player;
        this.StateMachine = stateMachine;
        this.PlayerData = playerData;
        this.Id = id;
        this._stateName = StateNameAttribute.GetStateName(id);
    }

    public virtual void EnterState()
    {
        DoChecks();
        if(StateMachine.CurrentState != Player.AttackState) Player.Animator.SetBool(_stateName, true);
        StartTime = Time.time;
        IsAnimationFinished = false;
        IsExitingState = false;
    }

    public virtual void ExitState()
    {
        if(StateMachine.CurrentState != Player.AttackState) Player.Animator.SetBool(_stateName, false);
        IsExitingState = true;
    }

    public virtual void LogicUpdate()
    {
        PlayerData.RawInputValue = Mathf.Clamp(-Player.InputHandler.ListenLeftInput + Player.InputHandler.ListenRightInput,-1f,1f);
    }

    public virtual void PhysicsUpdate()
    {
        DoChecks();
    }

    public virtual void DoChecks()
    {
        
    }
    
    public virtual void AnimationTrigger() { }

    public virtual void AnimationFinishTrigger() => IsAnimationFinished = true;

}
