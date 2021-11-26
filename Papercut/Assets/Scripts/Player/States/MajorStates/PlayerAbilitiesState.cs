using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAbilitiesState : PlayerState
{
    protected bool IsAbilityDone;
    
    public PlayerAbilitiesState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void EnterState()
    {
        base.EnterState();
        IsAbilityDone = false;
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();

        if (!IsAbilityDone) return;
        if (Player.Ground && Player._appliedVelocity.y < 0.01f) StateMachine.ChangeState(Player.IdleState);
        else StateMachine.ChangeState(Player.InAirState);
    }
}
