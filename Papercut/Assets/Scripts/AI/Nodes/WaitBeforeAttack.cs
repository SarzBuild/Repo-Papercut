using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaitBeforeAttack : Node
{
    private readonly EnemyData _enemyData;
    private readonly float _time;
    
    private float _timer;
    
    public WaitBeforeAttack(EnemyData enemyData,float time)
    {
        _enemyData = enemyData;
        _time = time;
    }
    
    public override NodeState Evaluate()
    {
        SetCurrentNode();
        
        _timer += Time.fixedDeltaTime;

        if (!(_timer > _time)) return NodeState.FAILURE;
        _timer = 0;
        return NodeState.SUCCESS;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
