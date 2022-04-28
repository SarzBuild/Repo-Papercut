using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GuardianWeapon : WeaponBase
{
    public GuardianEnemyBrain GuardianEnemyBrain;
    public Transform AttackPoint;
    private Vector2 AttackBoxSize = new Vector2(0.25f, 0.8f);
    
    public AttackTrigger AttackTrigger;
    
    protected override bool FireImplementation()
    {
        GuardianEnemyBrain.NewEnemyData.HasTouchedPlayer = false;
        GuardianEnemyBrain.NewEnemyData.IsCharging = true;
        
        GuardianEnemyBrain.SetVelocityX(20f * GuardianEnemyBrain.FacingDirection); //(Todo)Change from facing direction to locked direction when charging up attack
        
        if (AttackTrigger == null)
        {
            AttackTrigger = GuardianEnemyBrain.AttackTrigger;
        }
        
        AttackTrigger.InitializeEnemyProperties(gameObject, Settings, GuardianEnemyBrain.NewEnemyData, GuardianEnemyBrain.EnemyData.AttackKnockbackForce);
        AttackTrigger.SetActive();
        
        
        
        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }
    
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireCube(AttackPoint.position,AttackBoxSize);
    }
}
