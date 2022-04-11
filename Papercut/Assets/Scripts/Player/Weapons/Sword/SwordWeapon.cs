using System;
using UnityEngine;
using Random = UnityEngine.Random;

public class SwordWeapon : WeaponBase
{
    public float range = 1f;
    private Animator _playerAnim;
    protected override bool FireImplementation()
    {
        HandleAttackAnims();
        var hits = Physics2D.OverlapCircleAll(transform.position, range);

        if (hits.Length > 1)
        {
            foreach (var hit in hits)
            {
                if (hit.transform.gameObject.layer == GenericManager.BreakableLayerMask)
                {
                    if (Player.Instance.PlayerData.CanBreakWalls)
                    {
                        DealDamage(hit);
                    }
                    break;
                }
                if (hit.transform.gameObject.layer != GenericManager.GroundLayerMask && hit.transform.gameObject.layer != GenericManager.PlayerLayerMask)
                {
                    DealDamage(hit);
                    break;
                }
            }
        }
        
        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }

    private void DealDamage(Collider2D hit)
    {
        var healthComponent = hit.GetComponent<HealthComponent>();
        if (healthComponent != null)
        {
            healthComponent.DealDamage(Settings.Damage);
        } 
    }
    
    private void HandleAttackAnims()
    {
        if (_playerAnim == null) { _playerAnim = Player.Instance.Animator; }
        
        var random = Random.Range(0, 2);
        switch (random)
        {
            case 0:
            {
                _playerAnim.SetTrigger(_sword_anim_1);
                break;
            }
            case 1:
            {
                _playerAnim.SetTrigger(_sword_anim_2);
                break;
            }
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position,range);
    }
}
