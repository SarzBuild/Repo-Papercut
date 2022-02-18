using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerState
{
    protected Player Player;
    protected PlayerStateMachine StateMachine;
    protected PlayerData PlayerData;
    
    protected bool IsAnimationFinished;
    protected bool IsExitingState;
    
    protected float StartTime;

    public string StateName { get { return _stateName; } }
    private string _stateName;
    
    public PlayerState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName)
    {
        this.Player = player;
        this.StateMachine = stateMachine;
        this.PlayerData = playerData;
        this._stateName = stateName;
    }

    public virtual void EnterState()
    {
        DoChecks();
        Player.Animator.SetBool(_stateName, true);
        StartTime = Time.time;
        IsAnimationFinished = false;
        IsExitingState = false;
    }

    public virtual void ExitState()
    {
        Player.Animator.SetBool(_stateName, false);
        IsExitingState = true;
    }

    public virtual void LogicUpdate()
    {
        PlayerData.RawInputValue = Mathf.Clamp(-Player.InputHandler.ListenLeftInput() + Player.InputHandler.ListenRightInput(),-1f,1f);
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
