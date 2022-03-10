using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HunterWeapon : WeaponBase
{
    public GameObject BulletPrefab;
    public float BulletSpeed;

    protected override bool FireImplementation()
    {
        var instantiatedObject = Instantiate(BulletPrefab, transform.position, transform.rotation).GetComponent<Bullet>();
        instantiatedObject.Speed = BulletSpeed;
        instantiatedObject.DamageToDeal = (int)Settings.Damage;
        
        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }
}
