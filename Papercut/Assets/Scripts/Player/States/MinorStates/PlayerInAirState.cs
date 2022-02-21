using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInAirState : PlayerState
{
    public PlayerInAirState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.InAir)
    {
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if(IsExitingState) return;
        HandleStateChange();
        CalculateJumpEndEarly();
        CalculateJumpApex();
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        Player.MovementClampedAndApex();
        Player.UpdateVelocity();
    }

    public override void ExitState()
    {
        base.ExitState();
    }
    
    private void HandleStateChange()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else if ((Player.WallFrontHit || Player.WallBackHit) && !PlayerData.WallJumping)
        {
            StateMachine.ChangeState(Player.WallGrabState);
        }
        else if (Player.Grounded)
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
    }
    
    private void CalculateJumpApex()
    {
        if (!PlayerData.CollisionDown)
        {
            PlayerData._apexPoint = Mathf.InverseLerp(PlayerData._jumpApexThreshold, 0, Mathf.Abs(PlayerData.Velocity.y));
            PlayerData.CurrentFallSpeed = Mathf.Lerp(PlayerData.MinimumFallSpeed, PlayerData.MaximumFallSpeed, PlayerData._apexPoint);
        }
        else
        {
            PlayerData._apexPoint = 0;
        }
    }
    
    private void CalculateJumpEndEarly()
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
