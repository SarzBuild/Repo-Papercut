using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderlingWeapon : WeaponBase
{
    public LayerMask PlayerLayerMask;
    protected override bool FireImplementation()
    {
        var hit = Physics2D.BoxCast(transform.position,new Vector2(1,1),0f,transform.right,1,PlayerLayerMask);
        if (hit)
        {
            HealthComponent healthComponent = hit.collider.GetComponent<HealthComponent>();
            if (healthComponent != null)
            {
                healthComponent.DealDamage(Settings.Damage);
            } 
        }

        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }
}
