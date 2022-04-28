using UnityEngine;


public class PlayerAttackState : PlayerState
{
    public PlayerAttackState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Attack)
    {
    }
    private string _swordAnim1 = "sword1";
    private string _swordAnim2 = "sword2";

    public override void EnterState()
    {
        base.EnterState();
        Player.LastAttackTime = Time.time + Player.Weapons.EquippedWeapon.Settings.FireCooldownSec;
        HandleAttackAnims(Player.IncreaseAttackCounter());
        PlayerData.CurrentHorizontalSpeed = Player.FacingDirection * 15;
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        UpdateAttackCondition();
        if(AttackCondition){ HandleStateChange(); }
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        Player.UpdateVelocity();
        PlayerData.CurrentHorizontalSpeed = Mathf.MoveTowards(PlayerData.CurrentHorizontalSpeed, 0, PlayerData.Deceleration * Time.fixedDeltaTime);
    }

    public override void ExitState()
    {
        base.ExitState();
        Player.SetVelocityZero();
    }

    private void HandleAttackAnims(int attackState)
    {
        switch (attackState)
        {
            case 1:
                Player.Animator.SetTrigger(_swordAnim1);
                break;
            case 2:
                Player.Animator.SetTrigger(_swordAnim2);
                break;
        }
    }
    
    private void HandleStateChange()
    {
        if (Player.Grounded)
        {
            if (PlayerData.RawInputValue != 0)
            {
                StateMachine.ChangeState(Player.MoveState);
            }
            else
            {
                StateMachine.ChangeState(Player.IdleState);
            }
        }
        else if (Player.InputHandler.ListenJumpInput == 2)
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else
        {
            StateMachine.ChangeState(Player.InAirState);
        }
    }
    
    public bool AttackCondition { get { return AttackTimeResult; } }
    public bool AttackTimeResult { get; private set; }
    public void UpdateAttackCondition() { AttackTimeResult = Player.LastAttackTime < Time.time; }
}
