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

    public bool CheckLedge { get { return CheckLedgeResult; } }
    public RaycastHit2D CheckLedgeResult { get; private set; }
    public void UpdateCheckLedge() { CheckLedgeResult = Physics2D.Raycast(_rightWallCheck.position, Vector2.down,5f, _groundLayerMask);
    }
}
