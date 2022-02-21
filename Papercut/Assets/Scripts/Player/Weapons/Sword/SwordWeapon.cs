using UnityEngine;

public class SwordWeapon : WeaponBase
{
    public Transform HiltPosition;

    protected override bool FireImplementation()
    {
        Debug.Log("Fired");
        return true;
    }

    protected override void PostSetOwner()
    {
        base.PostSetOwner();
        if (HiltPosition != null)
        {
            // The hilt is below the sword's origin.
            // WeaponBase parents to the HandPosition of the Player, but that is the origin.
            // To offset this, subtract the hilt local position.
            transform.localPosition -= HiltPosition.localPosition;
        }
    }
}
