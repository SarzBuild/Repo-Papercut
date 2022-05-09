using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NotNearEdge : Node
{
    private readonly EnemyBase _ai;
    private readonly EnemyData _enemyData;
    
    public NotNearEdge(EnemyBase ai, EnemyData enemyData)
    {
        _ai = ai;
        _enemyData = enemyData;
    }

    public override NodeState Evaluate()
    {
        if (_ai.CheckLedge)
        {
            return NodeState.SUCCESS;
        }
        if (_enemyData.SearchingForTarget) _enemyData.SearchingForTarget = false;
        return NodeState.FAILURE;
    }
}
