using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerWallGrabState : PlayerState
{
    public PlayerWallGrabState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.WallGrab)
    {
    }
    public override void EnterState()
    {
        base.EnterState();
        Player.SetVelocityZero();
        Player.FlipCharacterDirection();
        PlayerData.CurrentJumpCount = 1;base.EnterState();
    }

    public override void ExitState()
    {
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if (Input.GetKeyDown(KeyCode.Space))
        {
            PlayerData.WallJumping = true;
            PlayerData._currentHorizontalSpeed = -PlayerData._currentHorizontalSpeed;
            StateMachine.ChangeState(Player.JumpState);
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
