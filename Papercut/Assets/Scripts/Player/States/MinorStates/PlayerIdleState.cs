using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerIdleState : PlayerGroundedState
{
    public PlayerIdleState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void EnterState()
    {
        base.EnterState();
        Player.SetVelocityZero();
    }
    
    public override void LogicUpdate()
    {
        base.LogicUpdate();
        if(IsExitingState) return;
        if(rawInputValue != 0) StateMachine.ChangeState(Player.MoveState);
    }
}
