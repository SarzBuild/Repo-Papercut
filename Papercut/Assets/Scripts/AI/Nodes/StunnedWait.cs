using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StunnedWait : Node
{
    private readonly Transform _target;
    private readonly EnemyData _enemyData;
    private float _timer;

    public StunnedWait(EnemyData enemyData)
    {
        _enemyData = enemyData;
    }

    public override NodeState Evaluate()
    {
        if (!_enemyData.IsStunned) return NodeState.FAILURE;
        SetCurrentNode();
        
        _timer += Time.fixedDeltaTime;

        if (!(_timer > _enemyData.StunnedTime)) return NodeState.RUNNING;
        _enemyData.IsStunned = false;
        _timer = 0;
        return NodeState.SUCCESS;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}

