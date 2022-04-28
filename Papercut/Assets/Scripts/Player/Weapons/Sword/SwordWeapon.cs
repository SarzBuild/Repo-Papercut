using System;
using UnityEngine;
using Random = UnityEngine.Random;

public class SwordWeapon : WeaponBase
{
    public float range = 1f;
    private Player _player;

    public AttackTrigger AttackTrigger;
    protected override bool FireImplementation()
    {
        if (_player == null) { _player = Player.Instance; }
        if (AttackTrigger == null) { AttackTrigger = _player.AttackTrigger; }
        
        _player.StateMachine.ChangeState(_player.AttackState);
        
        AttackTrigger.InitializePlayerProperties(gameObject, Settings, _player.PlayerData, Vector2.zero);
        AttackTrigger.SetActive();
        
        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position,range);
    }
}
