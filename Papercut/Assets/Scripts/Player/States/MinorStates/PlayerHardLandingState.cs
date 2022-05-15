using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHardLandingState : PlayerState
{
    public PlayerHardLandingState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.HardLanding)
    {
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        
        if (IsExitingState) return;
        if (PlayerData.RawInputValue != 0) StateMachine.ChangeState(Player.MoveState);
        else StateMachine.ChangeState(Player.IdleState);
    }
}
