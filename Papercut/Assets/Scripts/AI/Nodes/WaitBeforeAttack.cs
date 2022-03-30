using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaitBeforeAttack : Node
{
    private Transform _target;
    private EnemyData _enemyData;

    private float _timer;
    
    public WaitBeforeAttack(Transform target, EnemyData enemyData)
    {
        _target = target;
        _enemyData = enemyData;
    }
    
    public override NodeState Evaluate()
    {
        SetCurrentNode();
        
        _timer += Time.fixedDeltaTime;
        
        if (_timer < 0.5f) return NodeState.RUNNING;
        
        _timer = 0;
        return NodeState.SUCCESS;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
