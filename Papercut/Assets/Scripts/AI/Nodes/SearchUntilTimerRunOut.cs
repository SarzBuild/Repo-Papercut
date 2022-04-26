using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SearchUntilTimerRunOut : Node
{
    private readonly Transform _target;
    private readonly EnemyData _enemyData;
    private float _time;
    private float _timer;
    
    public SearchUntilTimerRunOut(EnemyData enemyData,float time)
    {
        _enemyData = enemyData;
        _time = time;
    }
    
    public override NodeState Evaluate()
    {
        SetCurrentNode();
        
        _timer += Time.fixedDeltaTime;
        _timer = 0;
        _enemyData.SearchingForTarget = false;
        
        return _timer < _time ? NodeState.SUCCESS : NodeState.FAILURE;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
