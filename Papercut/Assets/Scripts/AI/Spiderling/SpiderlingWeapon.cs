using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderlingWeapon : WeaponBase
{
    public SpiderlingEnemyBrain SpiderlingEnemyBrain;
    public EnemyData EnemyData;
    public Transform AttackPoint;
    private Vector2 AttackBoxSize = new Vector2(0.25f, 0.8f);

    public AttackTrigger AttackTrigger;
    
    protected override bool FireImplementation()
    {
        SpiderlingEnemyBrain.NewEnemyData.CurrentHorizontalSpeed = EnemyData.JumpXVelocity * SpiderlingEnemyBrain.FacingDirection;
        SpiderlingEnemyBrain.NewEnemyData.CurrentVerticalSpeed = EnemyData.JumpYVelocity;

        if (AttackTrigger == null)
        {
            AttackTrigger = SpiderlingEnemyBrain.AttackTrigger;
        }
        
        if(AttackTrigger.Parent == null) { AttackTrigger.Parent = gameObject; }
        if(AttackTrigger.EnemyBase == null) { AttackTrigger.EnemyBase = SpiderlingEnemyBrain; }
        if(AttackTrigger.WeaponData == null) { AttackTrigger.WeaponData = Settings; }
        if (AttackTrigger.EnemyData == null) { AttackTrigger.EnemyData = SpiderlingEnemyBrain.NewEnemyData;}
        
        AttackTrigger.SetActive();
        AttackTrigger.UpdateLastAttackTime(Time.time,2f);
        
        

        // TODO - this is where we do hit testing and additional FX, and deal damage to whatever is potentially hit.
        // It can also be where you initialize the hitbox, but then wait for an event for collision trigger enter. Really depends on how you want it to functionally work.
        return true;
    }
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position,EnemyData.AttackRange);
        Gizmos.DrawWireCube(AttackPoint.position,AttackBoxSize);
    }
}
