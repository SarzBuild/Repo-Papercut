using UnityEngine;


public class PlayerDamagedState : PlayerState
{
    public PlayerDamagedState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Damaged)
    {
    }
    
    public override void EnterState()
    {
        base.EnterState();
        
        //Behaviour
        
        HandleStateChange();
    }

    public override void ExitState()
    {
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        HandleStateChange();
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
    }

    public override void DoChecks()
    {
        base.DoChecks();
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

    public void BlinkRed(HealthComponent component, float value, GameObject arg3, Vector2  knockbackSpeed)
    {
        Player.Renderer.material.SetColor("_BaseColor", Color.red);
        Player.LastHitTime = Time.time;
    }

    public void BloodEffects(HealthComponent component, float value, GameObject gameObject, Vector2 knockbackSpeed)
    {
        Player.Animator.SetTrigger("hit");
        Player.Instantiate(Player.BloodObject, Player.transform.position, Quaternion.Inverse(Player.transform.rotation));
    }
}
