using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerRunningState : PlayerState
{
    public PlayerRunningState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Running)
    {
    }
    public override void LogicUpdate()
    {
        base.LogicUpdate();
        
        Player.CheckFlip((int)PlayerData.RawInputValue);

        if (IsExitingState) return;
        HandleStateChange();
    }
    
    private void HandleStateChange()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else if (PlayerData.CurrentVerticalSpeed < 0)
        {
            StateMachine.ChangeState(Player.InAirState);
        }
        else if (Player.InputHandler.ListenDashInput == 2 && Player.CurrentDashCount >= 1)
        {
            StateMachine.ChangeState(Player.DashState);
        }
        else
        {
            if (Player._appliedVelocity == Vector2.zero)
            {
                StateMachine.ChangeState(Player.IdleState);
            }
        }
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        Player.MovementClampedAndApex();
        Player.UpdateVelocity();
    }
    
}
