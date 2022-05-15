using UnityEngine;


public class PlayerDeathState : PlayerState
{
    public PlayerDeathState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Death)
    {
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        ShowMenuAfterAnimationEnd();
    }
    
    public void StateChange(HealthComponent component, GameObject killer)
    {
        StateMachine.ChangeState(this);
    }

    public void OnPlayerDeath(HealthComponent component, GameObject killer)
    {
        if (killer != null)
        {
            Debug.Log(string.Format("Player killed by {0}", killer.name));
        }
        
        Player.Animator.SetBool(StateMachine.CurrentState.StateName,false);
        Player.Animator.SetBool("dead",true);
        
        Player.InputHandler.LockMouseInputs(true);
        Player.InputHandler.LockPlayerInputs(true);
        
        GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.PlayerDeath,Player.gameObject);
        
        Time.timeScale = 0;

        Player.SimplePlayerUI.Active = true;
    }

    private void ShowMenuAfterAnimationEnd()
    {
        if (Player.Animator.GetCurrentAnimatorStateInfo(0).IsName("Death"))
        {
            if (Player.Animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1f)
            {
                if (Player.SimplePlayerUI.Active && !Player.SimplePlayerUI.RestartUI.activeSelf)
                {
                    Player.SimplePlayerUI.EnableDeathMenu();
                }
            }
        }
    }
}
