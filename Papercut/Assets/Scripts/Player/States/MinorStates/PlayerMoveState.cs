using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMoveState : PlayerGroundedState
{
    public PlayerMoveState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
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
        
        Player.CheckFlip((int)rawInputValue);
        //PlayerData.CurrentSpeed = PlayerData.WalkSpeed;
        Player.SetVelocityX(rawInputValue * PlayerData.CurrentSpeed);

        if (IsExitingState) return;
        if(rawInputValue == 0) StateMachine.ChangeState(Player.IdleState);
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
