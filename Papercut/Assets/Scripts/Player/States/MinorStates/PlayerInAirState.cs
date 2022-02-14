using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInAirState : PlayerState
{
    protected float velocityY;
    
    public PlayerInAirState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if(IsExitingState) return;
        HandleStateChange();
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        HandleFall();
    }

    public override void ExitState()
    {
        base.ExitState();
        velocityY = 0f;
    }
    
    private void HandleStateChange()
    {
        if (PlayerData.RawInputValue != 0)
        {
            if (Player.Grounded)
            {
                if (velocityY <= 100)
                {
                    StateMachine.ChangeState(Player.SoftLandingState);
                }
                else
                {
                    StateMachine.ChangeState(Player.HardLandingState);
                }
            }
            else if (Player.InputHandler.ListenRunInput() == 2 && Player.CurrentDashCount >= 1)
            {
                StateMachine.ChangeState(Player.DashState);
            }
        }
        else if (Player.InputHandler.ListenJumpInput() == 2)
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else
        {
            Player.CheckFlip((int)PlayerData.RawInputValue);
            Player.SetVelocityX(PlayerData.RawInputValue * PlayerData.WalkingSpeed);
        }
    }

    private void HandleFall()
    {
        if (PlayerData.Gravity == 0.0f)
        {
            return;
        }

        velocityY += PlayerData.Gravity * Time.deltaTime;
        Player.SetVelocityY(velocityY);
    }
}
