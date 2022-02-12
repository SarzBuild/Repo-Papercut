using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInAirState : PlayerState
{
    protected float downInputValue;
    protected float upInputValue;
    protected float velocityY;
    
    public PlayerInAirState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();

        HandleFall();
        HandleStateChange();
    }

    public override void ExitState()
    {
        base.ExitState();
        velocityY = 0f;
    }
    
    private void HandleStateChange()
    {
        if (Player.Grounded)
        {
            if (rawInputValue < 0.01f)
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
            else
            {
                StateMachine.ChangeState(Player.IdleState);
            }
        }
        else if (Player.InputHandler.ListenJumpInput() == 2)
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else
        {
            Player.CheckFlip((int)rawInputValue);
            float rightVelocity = GetRightAirVelocity();
            float leftVelocity = GetLeftAirVelocity();
            Player.SetVelocityX((rightVelocity + leftVelocity) * PlayerData.CurrentSpeed);
        }
    }

    private void HandleFall()
    {
        if (PlayerData.Gravity == 0.0f)
        {
            return;
        }

        velocityY += PlayerData.Gravity * (PlayerData.WalkingSpeed / 2) * Time.deltaTime;
        Player.SetVelocityY(velocityY);
    }

    private float GetAirVelocityFromInput(int input)
    {
        return Mathf.Clamp01(input * 1.33f + PlayerData.AirSensibility * Time.deltaTime);
    }

    private float GetRightAirVelocity()
    {
        int rightInput = Player.InputHandler.ListenRightInput();
        return GetAirVelocityFromInput(rightInput);
        /*
        if (rawInputValue == 1)
        {
        }

        return Mathf.Clamp((Mathf.Abs(rightInput) - PlayerData.AirSensibility * Time.fixedDeltaTime) * Mathf.Sign(rightInput), 0.1f, 1f);*/
        
    }

    private float GetLeftAirVelocity()
    {
        int leftInput = Player.InputHandler.ListenLeftInput();
        return GetAirVelocityFromInput(leftInput);
       /* if (rawInputValue == -1)
        {
            return Mathf.Clamp01(leftInput * 1.33f + PlayerData.AirSensibility * Time.deltaTime);
        }
        return Mathf.Clamp((Mathf.Abs(leftInput)) -PlayerData.AirSensibility * Time.fixedDeltaTime * Mathf.Sign(leftInput), 0.1f, 1f);*/
    }
}
