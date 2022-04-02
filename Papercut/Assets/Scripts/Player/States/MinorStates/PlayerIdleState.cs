using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerIdleState : PlayerState
{
    public PlayerIdleState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Idle)
    {
    }

    public override void EnterState()
    {
        base.EnterState();
        //Player.SetVelocityZero();
    }
    
    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if(IsExitingState) return;
        HandleStateChange();
    }
    
    private void HandleStateChange()
    {
        if (Player.InputHandler.ListenRMouseInput == 2 && PlayerData.GrapplingAbilityActive)
        {
            StateMachine.ChangeState(Player.GrapplingState);
        }
        if (Player.Grounded)
        {
            if (PlayerData.RawInputValue != 0)
            {
                StateMachine.ChangeState(Player.MoveState);
            }
            else if (Input.GetKeyDown(KeyCode.Space))
            {
                StateMachine.ChangeState(Player.JumpState);
            }
        }
        else
        {
            StateMachine.ChangeState(Player.InAirState);
        }
    }
    
    
}
