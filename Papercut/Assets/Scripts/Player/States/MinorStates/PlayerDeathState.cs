using UnityEngine;


public class PlayerDeathState : PlayerState
{
    public PlayerDeathState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, PlayerStateId id) : base(player, stateMachine, playerData, id)
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
