using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWallGrabState : PlayerState
{
    public PlayerWallGrabState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.WallGrab)
    {
    }

    private int _layerStickyWall;
    private float _lastTimeEnterState;
    
    public override void EnterState()
    {
        _layerStickyWall = LayerMask.NameToLayer("JumpableWall");
        base.EnterState();
        _lastTimeEnterState = Time.time;
        Player.SetVelocityZero();
        //Player.FlipCharacterDirection();
        PlayerData.CurrentJumpCount = PlayerData.ResetNumberOfJumpOnWallGrab;
    }

    public override void ExitState()
    {
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if (Input.GetKeyDown(KeyCode.Space) && PlayerData.WallJumpAbilityActive)
        {
            SetWallJumpBool();
            StateMachine.ChangeState(Player.WallJumpState);
        }
        else if (Player.InputHandler.ListenDownInput == 1 || !CheckForNotOnStickyWall())
        {
            SetWallJumpBool();
            if(Player.FacingDirection == 1) PlayerData.CurrentHorizontalSpeed = -PlayerData.EndWallSlipXVelocity;
            if(Player.FacingDirection == -1) PlayerData.CurrentHorizontalSpeed = PlayerData.EndWallSlipXVelocity;
            PlayerData.CurrentVerticalSpeed = PlayerData.EndWallSlipYVelocity;

            //TODO Need to move player a bit so that they don't touch the wall no more.
            StateMachine.ChangeState(Player.InAirState);
        }
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        TimeBeforeFalling();
    }

    public override void DoChecks()
    {
        base.DoChecks();
        Player.UpdateHitResults();
        Player.UpdateStickyWallBackHit();
        Player.UpdateStickyWallFrontHit();
    }

    private bool CheckForNotOnStickyWall()
    {
        if (Player.WallStickyBackHit)
        {
            return true;
        }
        if (Player.WallStickyFrontHit)
        {
            return true;
        }
        if (Player.WallBackHit && Player.WallStickyBackHit)
        {
            for (int i = 0; i < Player.WallBackHitResult.Length; i++)
            {
                if ((Player._groundLayerMask.value & (1 << Player.WallBackHitResult[i].collider.gameObject.layer)) > 0)
                {
                    return false;
                }

            }
        }
        else if (Player.WallFrontHit && Player.WallStickyFrontHit)
        {
            for (int i = 0; i < Player.WallBackHitResult.Length; i++)
            {
                if ((Player._groundLayerMask.value & (1 << Player.WallFrontHitResult[i].collider.gameObject.layer)) > 0)
                {
                    return false;
                }
            }
        }
        else if (!Player.WallFrontHit || !Player.WallBackHit)
        {
            return false; //If nothing is found, that means the player is in the air;
        }
        return true; //If it returns here, that means that the player is currently on a sticky wall.
    }
    

    private void TimeBeforeFalling()
    {
        var cooldownTime = _lastTimeEnterState + PlayerData.TimeBeforeSlippingStart;
        if (Time.time - cooldownTime > 0)
        {
            Player.SetVelocityY(-Mathf.Abs(PlayerData.SlippingVelocity));
            Player.ApplyVelocity();
        }
    }

    private void SetWallJumpBool() { PlayerData.CurrentlyWallJumping = true; }
}
