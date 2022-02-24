using System.Collections;
using System.Collections.Generic;
using System.Linq;
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
        else if (Player.CheckForLayerWall() && !PlayerData.CurrentlyWallJumping)
        {
            StateMachine.ChangeState(Player.WallGrabState);
        }
        else if (Player.Grounded)
        {
            if (PlayerData.CurrentVerticalSpeed <= 100)
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
            PlayerData.ApexPoint = Mathf.InverseLerp(PlayerData.JumpApexThreshold, 0, Mathf.Abs(PlayerData.Velocity.y));
            PlayerData.CurrentFallSpeed = Mathf.Lerp(PlayerData.MinimumFallSpeed, PlayerData.MaximumFallSpeed, PlayerData.ApexPoint);
        }
        else
        {
            PlayerData.ApexPoint = 0;
        }
    }
    
    private void CalculateJumpEndEarly()
    {
        if (!PlayerData.CollisionDown && Input.GetKeyUp(KeyCode.Space) && !PlayerData.EndedJumpEarly && Player._appliedVelocity.y > 0)
        {
            PlayerData.EndedJumpEarly = true;
        }

        if (Player.CeilingHit)
        {
            if (PlayerData.CurrentVerticalSpeed > 0) PlayerData.CurrentVerticalSpeed = 0;
        }
    }
}
