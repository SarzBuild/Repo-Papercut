using System;
using UnityEngine;

public class SwordWeapon : WeaponBase
{
    public LayerMask GroundLayerMask;
    public LayerMask PlayerLayerMask;

    protected override bool FireImplementation()
    {
        var hits = Physics2D.OverlapCircleAll(transform.position, 1f);

        if (hits.Length > 1)
        {
            foreach (var hit in hits)
            {
                if (hit.transform.gameObject.layer != GroundLayerMask &&
                    hit.transform.gameObject.layer != PlayerLayerMask)
                {
                    HealthComponent healthComponent = hit.GetComponent<HealthComponent>();
                    if (healthComponent != null)
                    {
                        healthComponent.DealDamage(Settings.Damage);
                        Debug.Log(healthComponent.CurrentHealth);
                    } 
                }
            }
        }
        
        
        Debug.Log("Fired");
        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawSphere(transform.position,1f);
    }
}
