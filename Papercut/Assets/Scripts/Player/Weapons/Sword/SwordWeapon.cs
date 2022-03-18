using System;
using UnityEngine;

public class SwordWeapon : WeaponBase
{
    public float range = 1f;
    protected override bool FireImplementation()
    {
        var hits = Physics2D.OverlapCircleAll(transform.position, range);

        if (hits.Length > 1)
        {
            foreach (var hit in hits)
            {
                if (hit.transform.gameObject.layer != GenericManager.GroundLayerMask && hit.transform.gameObject.layer != GenericManager.PlayerLayerMask)
                {
                    var healthComponent = hit.GetComponent<HealthComponent>();
                    if (healthComponent != null)
                    {
                        healthComponent.DealDamage(Settings.Damage);
                    } 
                }
            }
        }
        
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
