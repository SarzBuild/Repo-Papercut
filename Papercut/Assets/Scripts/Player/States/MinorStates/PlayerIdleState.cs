using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerIdleState : PlayerState
{
    public PlayerIdleState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void EnterState()
    {
        base.EnterState();
        Player.SetVelocityZero();
    }
    
    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if(IsExitingState) return;
        HandleStateChange();
    }
    
    private void HandleStateChange()
    {
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
