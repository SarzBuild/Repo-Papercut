using UnityEngine;


public class PlayerDamagedState : PlayerState
{
    public PlayerDamagedState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Damaged)
    {
    }

    private float _hitCooldown;
    private Vector2 _velocityContainer;
    
    public override void EnterState()
    {
        base.EnterState();
        Player._appliedVelocity = _velocityContainer;
        Player.SetVelocityZero();
        Player.Animator.SetTrigger("hit");
        Player.LastHitTime = Time.time;
        _hitCooldown = Player.LastHitTime + PlayerData.HitCooldown;
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        UpdateHitCondition();

        if (HitCondition)
        {
            HandleStateChange();
        }
    }

    public override void ExitState()
    {
        base.ExitState();
        if (PlayerData.HitCooldown != 0)
        {
            PlayerData.CurrentHorizontalSpeed = _velocityContainer.x;
            PlayerData.CurrentVerticalSpeed = _velocityContainer.y;
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
    
    public bool HitCondition { get { return HitTimeResult; } }
    public bool HitTimeResult { get; private set; }
    public void UpdateHitCondition() { HitTimeResult = _hitCooldown < Time.time; }

    public void StateChange(HealthComponent component, float value, GameObject hitter, Vector2 knockbackSpeed)
    {
        StateMachine.ChangeState(this);
    }

    public void Knockback(HealthComponent component, float value, GameObject hitter, Vector2 knockbackSpeed)
    {
        var direction = (Player.transform.position - hitter.transform.position);
        var directionX = Mathf.Sign(direction.x);
        if (knockbackSpeed.x == 0)
        {
            PlayerData.CurrentHorizontalSpeed = directionX * PlayerData.KnockbackSpeed;
        }
        else
        {
            PlayerData.CurrentHorizontalSpeed = directionX * knockbackSpeed.x;
        }
        if (knockbackSpeed.y != 0)
        {
            PlayerData.CurrentVerticalSpeed = knockbackSpeed.y;
        }
    }

    public void BlinkRed(HealthComponent component, float value, GameObject hitter, Vector2  knockbackSpeed)
    {
        Player.Renderer.material.SetColor("_BaseColor", Color.red);
    }

    public void BloodEffects(HealthComponent component, float value, GameObject gameObject, Vector2 knockbackSpeed)
    {
        Player.Instantiate(Player.BloodObject, Player.transform.position, Quaternion.Inverse(Player.transform.rotation));
    }
}
