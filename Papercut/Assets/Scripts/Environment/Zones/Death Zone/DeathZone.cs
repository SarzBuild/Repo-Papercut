using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum DamageType
{
    UsingCurrentPlayerHealth,
    UsingDamageFromScriptableObject
}

public class DeathZone : WeaponBase
{
    public DamageType DamageType;

    protected override bool FireImplementation()
    {
        var player = Player.Instance;
        HealthComponent healthComponent = player.GetComponent<HealthComponent>();
        if (healthComponent != null)
        {
            if (DamageType == DamageType.UsingCurrentPlayerHealth) { healthComponent.DealDamage(healthComponent.CurrentHealth); }
            if (DamageType == DamageType.UsingDamageFromScriptableObject) { healthComponent.DealDamage(Settings.Damage); }
        }
        return true;
    }

    private void OnTriggerStay2D(Collider2D col)
    {
        if (col.transform.gameObject.layer == GenericManager.PlayerLayerMask)
        {
            Fire();
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        //Restart attack cooldown time if possible
    }
}