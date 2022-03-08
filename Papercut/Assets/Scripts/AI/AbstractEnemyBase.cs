using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class AbstractEnemyBase : AppliedPhysics
{
    private Node _topNode;

    protected virtual void ConstructBehaviorTree()
    {
        
    }

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
