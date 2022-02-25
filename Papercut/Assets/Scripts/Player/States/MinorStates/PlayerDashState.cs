using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDashState : PlayerState
{
    public PlayerDashState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Dash)
    {
    }

    private float _tempDashDirection;
    private int _dashCount;
    private float _dashingTime;

    public override void EnterState()
    {
        base.EnterState();
        _dashingTime = Time.time + PlayerData.DashingTime;
        Player.CurrentDashCount--;
        _tempDashDirection = PlayerData.RawInputValue * PlayerData.DashingAcceleration * PlayerData.WalkingSpeed;
        
    }

    public override void ExitState()
    {
        Player.SetVelocityZero();
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        UpdateDashCondition();
        
        if(IsExitingState) return;
        HandleStateChange();
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        
        if(!DashCondition) { HandleDashing(); }
    }

    private void HandleStateChange()
    {
        if (!DashCondition) return;
        if (Player.Grounded)
        {
            if (PlayerData.RawInputValue != 0)
            {
                StateMachine.ChangeState(Player.MoveState);
            }
            else
            {
                StateMachine.ChangeState(Player.IdleState);
            }
        }
        else if (Player.InputHandler.ListenJumpInput == 2)
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else
        {
            StateMachine.ChangeState(Player.InAirState);
        }
    }
    
    public bool DashCondition { get { return DashingTimeResult; } }
    public bool DashingTimeResult { get; private set; }
    public void UpdateDashCondition() { DashingTimeResult = _dashingTime < Time.time; }


    private void HandleDashing()
    {
        Player.SetVelocityXWithYZero(_tempDashDirection);
    }
}
