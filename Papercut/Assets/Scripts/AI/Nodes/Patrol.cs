using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Animations;

public class Patrol : Node
{
    private readonly EnemyBase _ai;
    private EnemyData _enemyData;
    private float _timer;
    private Vector2 _direction;
    private int _side = 1;
    
    public Patrol(EnemyBase aI, EnemyData enemyData)
    {
        _ai = aI;
        _enemyData = enemyData;
    }
    
    public override NodeState Evaluate()
    {
        if (_enemyData.IdlingState == 1)
        {
            SetCurrentNode();
            _timer += Time.fixedDeltaTime;

            if (_timer >= _enemyData.PatrolTime)
            {
                _timer = 0;
                _side = -_side;
                _enemyData.IdlingState = 0;
                return NodeState.SUCCESS;
            }

            _ai.CheckFlip((int)Mathf.Sign(_side));
            
            _enemyData.CurrentHorizontalSpeed += _side * _enemyData.Acceleration * Time.deltaTime;
            _enemyData.CurrentHorizontalSpeed = Mathf.Clamp(_enemyData.CurrentHorizontalSpeed, -_enemyData.PatrolMoveClamped, _enemyData.PatrolMoveClamped);
            return NodeState.RUNNING;
        }

        return NodeState.FAILURE;
    }

    public void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
    
}
