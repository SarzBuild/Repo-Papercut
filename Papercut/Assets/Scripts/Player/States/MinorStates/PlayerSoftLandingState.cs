using UnityEngine;

public class PlayerSoftLandingState : PlayerState
{
    public PlayerSoftLandingState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.SoftLanding)
    {
    }
    public override void EnterState()
    {
        base.EnterState();
        if (Player._appliedVelocity != Vector2.zero) StateMachine.ChangeState(Player.MoveState);
        else StateMachine.ChangeState(Player.IdleState);
    }
}
