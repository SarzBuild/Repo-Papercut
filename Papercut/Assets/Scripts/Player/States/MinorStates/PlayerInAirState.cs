using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerInAirState : PlayerState
{
    protected float velocityY;
    private float _apexPoint;
    
    public PlayerInAirState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if(IsExitingState) return;
        HandleStateChange();
        GravityLimiter();
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        HandleFall();
        CalculateGravity();
        CalculateJumpApex();
    }

    public override void ExitState()
    {
        base.ExitState();
    }
    
    private void HandleStateChange()
    {
        if (Player.Grounded)
        {
            if (PlayerData._currentVerticalSpeed <= 100)
            {
                StateMachine.ChangeState(Player.SoftLandingState);
            }
            else
            {
                StateMachine.ChangeState(Player.HardLandingState);
            }
        }
        else if (PlayerData.RawInputValue != 0)
        {
            if (Player.InputHandler.ListenRunInput() == 2 && Player.CurrentDashCount >= 1)
            {
                StateMachine.ChangeState(Player.DashState);
            }
            else
            {
                Player.CheckFlip((int)PlayerData.RawInputValue);
                Player.SetVelocityX(PlayerData.RawInputValue * PlayerData.WalkingSpeed);
            }
        }
        else if (Input.GetKeyDown(KeyCode.Space))
        {
            StateMachine.ChangeState(Player.JumpState);
        }
    }

    private void HandleFall()
    {
        Player.SetVelocityY(PlayerData._currentVerticalSpeed);
    }
    

    private void CalculateGravity()
    {
        if (PlayerData.CollisionDown)
        {
            if (PlayerData._currentVerticalSpeed < 0) PlayerData._currentVerticalSpeed = 0;
        }
        else
        {
            var fallSpeed = PlayerData._endedJumpEarly && PlayerData._currentVerticalSpeed > 0 ? PlayerData._fallSpeed * PlayerData._jumpEndEarlyGravityModifier : PlayerData._fallSpeed;
            
            PlayerData._currentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;
            
            if (PlayerData._currentVerticalSpeed < PlayerData._fallClamp) PlayerData._currentVerticalSpeed = PlayerData._fallClamp;
        }
    }

    private void CalculateJumpApex()
    {
        if (!PlayerData.CollisionDown)
        {
            _apexPoint = Mathf.InverseLerp(PlayerData._jumpApexThreshold, 0, Mathf.Abs(Player._appliedVelocity.y));
            PlayerData._fallSpeed = Mathf.Lerp(PlayerData._minFallSpeed, PlayerData._maxFallSpeed, _apexPoint);
        }
        else
        {
            _apexPoint = 0;
        }
    }
    
    private void GravityLimiter()
    {
        if (!PlayerData.CollisionDown && Input.GetKeyUp(KeyCode.Space) && !PlayerData._endedJumpEarly && Player._appliedVelocity.y > 0)
        {
            PlayerData._endedJumpEarly = true;
        }

        if (Player.CeilingHit)
        {
            if (PlayerData._currentVerticalSpeed > 0) PlayerData._currentVerticalSpeed = 0;
        }
    }
}
