using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EnemyProfileType
{
    Careful,
    Normal,
    Aggressive
}

public abstract class EnemyBase : AppliedPhysics
{
    [SerializeField] protected Transform PlayerTransform;
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
