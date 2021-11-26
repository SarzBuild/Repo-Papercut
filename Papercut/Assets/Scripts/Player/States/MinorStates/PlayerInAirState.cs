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

    /*public override void LogicUpdate()
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
        if(Player.Ground && rawInputValue < 0.01f && velocityY <= 100) StateMachine.ChangeState(Player.SoftLandingState);
        else if(Player.Ground && rawInputValue < 0.01f) StateMachine.ChangeState(Player.HardLandingState);
        else if(Player.InputHandler.ListenJumpInput() == 2) StateMachine.ChangeState(Player.JumpState);
        else
        {
            Player.CheckFlip((int)rawInputValue);
            //Debug.Log(HandleMovementInAir());
            Player.SetVelocityX(HandleMovementInAir() * PlayerData.CurrentSpeed);
        }
    }

    private void HandleFall()
    {
        if (!PlayerData.AffectedByGravity) return;
        velocityY += PlayerData.Gravity * (PlayerData.WalkSpeed / 2) * Time.deltaTime;
        Player.SetVelocityY(velocityY);
    }
    
    private float HandleRightAirMovement()
    {
        if (rawInputValue == 1)
        {
            PlayerData._rightInputValue = Mathf.Clamp01(PlayerData._rightInputValue * 1.33f + PlayerData._airSensibility * Time.deltaTime);
            return PlayerData._rightInputValue;
        }
        PlayerData._rightInputValue = Mathf.Clamp((Mathf.Abs(PlayerData._rightInputValue) - PlayerData._airSensibility * Time.fixedDeltaTime) * Mathf.Sign(PlayerData._rightInputValue), 0.1f, 1f);
        return PlayerData._rightInputValue;
        
    }

    private float HandleLeftAirMovement()
    {
        if (rawInputValue == -1)
        {
            PlayerData._leftInputValue = Mathf.Clamp01(PlayerData._leftInputValue * 1.33f + PlayerData._airSensibility * Time.deltaTime);
            return -PlayerData._leftInputValue;
        }
        PlayerData._leftInputValue = Mathf.Clamp((Mathf.Abs(PlayerData._leftInputValue) -PlayerData. _airSensibility * Time.fixedDeltaTime) * Mathf.Sign(PlayerData._leftInputValue),0.1f,1f);
        return -PlayerData._leftInputValue;
    }

    private float HandleMovementInAir() => HandleRightAirMovement() + HandleLeftAirMovement();
*/}
