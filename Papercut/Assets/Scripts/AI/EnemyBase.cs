using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class EnemyBase : AppliedPhysics
{
    [SerializeField] protected Transform Player;
    protected abstract void ConstructBehaviorTree();
    
    protected virtual void OnDamaged()
    {
        
    }

    protected virtual void Knockback()
    {
        
    }

    protected virtual void OnDeath()
    {
        
    }
}
