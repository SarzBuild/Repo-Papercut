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
        if(AbilityType == AbilityType.Weapon) return;
        gameObject.SetActive(true);
    }
    
    public void SetActive()
    {
        gameObject.SetActive(true);
    }

    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.transform.gameObject.layer == GenericManager.PlayerLayerMask)
        {
            AbilityListManager.RegisterToList(this);
            gameObject.SetActive(false);
        }
    }
}
