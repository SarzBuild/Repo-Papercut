using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GuardianWeapon : WeaponBase
{
    public GuardianEnemyBrain GuardianEnemyBrain;
    //public EnemyData EnemyData;
    public Transform AttackPoint;
    private Vector2 AttackBoxSize = new Vector2(0.25f, 0.8f);
    
    public AttackTrigger AttackTrigger;
    
    protected override bool FireImplementation()
    {
        GuardianEnemyBrain.NewEnemyData.HasTouchedPlayer = false;
        GuardianEnemyBrain.NewEnemyData.IsCharging = true;
        print("Hello");
        GuardianEnemyBrain.SetVelocityX(20f * GuardianEnemyBrain.FacingDirection); //(Todo)Change from facing direction to locked direction when charging up attack
        
        if (AttackTrigger == null)
        {
            AttackTrigger = GuardianEnemyBrain.AttackTrigger;
        }
        
        if(AttackTrigger.Parent == null) { AttackTrigger.Parent = gameObject; }
        if(AttackTrigger.EnemyBase == null) { AttackTrigger.EnemyBase = GuardianEnemyBrain; }
        if(AttackTrigger.WeaponData == null) { AttackTrigger.WeaponData = Settings; }
        if (AttackTrigger.EnemyData == null) { AttackTrigger.EnemyData = GuardianEnemyBrain.NewEnemyData;}
        
        AttackTrigger.SetKnockbackMultiplier(new Vector2(50f,10f));
        AttackTrigger.SetActive();
        AttackTrigger.UpdateLastAttackTime(Time.time,10f);
        
        
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
