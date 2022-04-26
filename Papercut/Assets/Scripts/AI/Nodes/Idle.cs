using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Idle : Node
{
    private readonly EnemyBase _ai;
    private readonly EnemyData _enemyData;
    private float _timer;
    private float _randomness = Random.Range(0f, 2f);
    
    public Idle(EnemyBase aI, EnemyData enemyData)
    {
        _ai = aI;
        _enemyData = enemyData;
    }
    
    public override NodeState Evaluate()
    {
        if (_enemyData.IdlingState == 0)
        {
            SetCurrentNode();
            _timer += Time.fixedDeltaTime;

            if (_timer >= _enemyData.IdleTime + _randomness)
            {
                _timer = 0;
                _enemyData.IdlingState = 1;
                return NodeState.SUCCESS;
            }
            
            _enemyData.CurrentHorizontalSpeed = Mathf.MoveTowards(_enemyData.CurrentHorizontalSpeed, 0, _enemyData.Deceleration * Time.fixedDeltaTime);
            return NodeState.RUNNING;
        }

        return NodeState.FAILURE;
    }

    public void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
