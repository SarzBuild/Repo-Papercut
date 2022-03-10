using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnerWeapon : WeaponBase
{
    public GameObject SpiderlingPrefab;
    protected override bool FireImplementation()
    {
        var tempSpiderling = Instantiate(SpiderlingPrefab,transform.position,transform.rotation);
        tempSpiderling.transform.parent = null;
        tempSpiderling.transform.localRotation = Quaternion.identity;

        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }
}
