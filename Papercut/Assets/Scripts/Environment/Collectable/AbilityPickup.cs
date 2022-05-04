using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AbilityPickup : MonoBehaviour
{
    public AbilityListManager AbilityListManager;
    public AbilityType AbilityType;
    [HideInInspector] public WeaponBase Weapon;

    public void OnRestart()
    {
        gameObject.SetActive(true);
    }

    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.transform.gameObject.layer == GenericManager.PlayerLayerMask)
        {
            if (Weapon != null)
            {
                AbilityListManager.Weapon = Weapon;
            }
            AbilityListManager.RegisterToList(this);
            gameObject.SetActive(false);
        }
    }
}
