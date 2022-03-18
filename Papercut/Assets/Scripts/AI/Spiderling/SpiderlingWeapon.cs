using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderlingWeapon : WeaponBase
{
    public LayerMask PlayerLayerMask;
    public float range = 1f;
    protected override bool FireImplementation()
    {
        var hit = Physics2D.BoxCast(transform.position,new Vector2(1,1),0f,transform.right,range,PlayerLayerMask);
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
    
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position,range);
    }
}
