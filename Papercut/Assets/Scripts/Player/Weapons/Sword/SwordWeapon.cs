using UnityEngine;

public class SwordWeapon : WeaponBase
{
    protected override bool FireImplementation()
    {
        Debug.Log("Fired");
        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }
}
