using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveState : PlayerState
{
    public PlayerMoveState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void EnterState()
    {
        base.EnterState();
    }

    public override void ExitState()
    {
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        
        Player.CheckFlip((int)PlayerData.RawInputValue);
        //PlayerData.CurrentSpeed = PlayerData.WalkSpeed;
        Player.SetVelocityX(PlayerData.RawInputValue * PlayerData.WalkingSpeed);

        if (IsExitingState) return;
        HandleStateChange();
    }
    
    private void HandleStateChange()
    {
        if (Player.InputHandler.ListenJumpInput() == 2)
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else if (Player.InputHandler.ListenRunInput() == 2 && Player.CurrentDashCount >= 1)
        {
            StateMachine.ChangeState(Player.DashState);
        }
        else
        {
            if (PlayerData.RawInputValue == 0)
            {
                StateMachine.ChangeState(Player.IdleState);
            }
            StateMachine.ChangeState(Player.InAirState);
        }
    }
    

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
    }

    public override void DoChecks()
    {
        base.DoChecks();
    }
}
