using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderlingWeapon : WeaponBase
{
    public SpiderlingEnemyBrain SpiderlingEnemyBrain;
    public Transform AttackPoint;
    private Vector2 AttackBoxSize = new Vector2(0.25f, 0.8f);

    public AttackTrigger AttackTrigger;
    
    protected override bool FireImplementation()
    {
        SpiderlingEnemyBrain.NewEnemyData.CurrentHorizontalSpeed = SpiderlingEnemyBrain.EnemyData.JumpXVelocity * SpiderlingEnemyBrain.FacingDirection;
        SpiderlingEnemyBrain.NewEnemyData.CurrentVerticalSpeed = SpiderlingEnemyBrain.EnemyData.JumpYVelocity;

        if (AttackTrigger == null)
        {
            AttackTrigger = SpiderlingEnemyBrain.AttackTrigger;
        }
        
        AttackTrigger.InitializeEnemyProperties(gameObject, Settings, SpiderlingEnemyBrain.NewEnemyData, SpiderlingEnemyBrain.EnemyData.AttackKnockbackForce);
        
        AttackTrigger.SetActive();
        
        return true;
    }
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position,SpiderlingEnemyBrain.EnemyData.AttackRange);
        Gizmos.DrawWireCube(AttackPoint.position,AttackBoxSize);
    }
}
