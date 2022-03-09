using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChasePlayer : Node
{
    private readonly Transform _player;
    private readonly EnemyBase _ai;
    private EnemyData _enemyData;
    private Vector2 _direction;
    
    public ChasePlayer(Transform player, EnemyBase aI, EnemyData enemyData)
    {
        _player = player;
        _ai = aI;
        _enemyData = enemyData;
    }

    public override NodeState Evaluate()
    {
        SetCurrentNode();
        _direction = (_ai.transform.position - _player.position).normalized;
            
        _ai.CheckFlip(-(int)Mathf.Sign(_direction.x));

        var distance = Vector2.Distance(_player.position, _ai.transform.position);
        if (distance > _enemyData.AttackRange)
        {
            _enemyData.CurrentHorizontalSpeed += -_direction.x * _enemyData.Acceleration * Time.deltaTime;
            
            _enemyData.CurrentHorizontalSpeed = Mathf.Clamp(_enemyData.CurrentHorizontalSpeed, -_enemyData.MoveClamped, _enemyData.MoveClamped);
            
            return NodeState.RUNNING;
        }

        _enemyData.CurrentHorizontalSpeed = 0;
        return NodeState.SUCCESS;
    }

    public void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
