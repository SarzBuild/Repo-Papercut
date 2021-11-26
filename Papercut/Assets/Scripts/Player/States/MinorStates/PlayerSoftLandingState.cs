using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSoftLandingState : PlayerGroundedState
{
    public PlayerSoftLandingState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }
    public override void EnterState()
    {
        base.EnterState();
    }

    public override void ExitState()
    {
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();

        if (IsExitingState) return;
        if (rawInputValue != 0) StateMachine.ChangeState(Player.MoveState);
        else if (IsAnimationFinished) StateMachine.ChangeState(Player.IdleState);
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
