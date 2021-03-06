using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flee : Node
{
    private readonly Transform _player;
    private readonly EnemyBase _ai;
    private readonly EnemyData _enemyData;
    private Vector2 _direction;
    private float _range;
    
    public Flee(Transform player, EnemyBase aI, EnemyData enemyData, float range)
    {
        _player = player;
        _ai = aI;
        _enemyData = enemyData;
        _range = range;
    }

    public override NodeState Evaluate()
    {
        SetCurrentNode();
        _direction = (_ai.transform.position - _player.position).normalized;
            
        _ai.CheckFlip(-(int)Mathf.Sign(_direction.x));

        var distance = Vector2.Distance(_player.position, _ai.transform.position);
        if (distance < _range)
        {
            _enemyData.CurrentHorizontalSpeed += _direction.x * _enemyData.Acceleration * Time.deltaTime;
            
            _enemyData.CurrentHorizontalSpeed = Mathf.Clamp(_enemyData.CurrentHorizontalSpeed, -_enemyData.MoveClamped, _enemyData.MoveClamped);
            
            return NodeState.RUNNING;
        }

        _enemyData.CurrentHorizontalSpeed = Mathf.MoveTowards(_enemyData.CurrentHorizontalSpeed, 0, _enemyData.Deceleration * Time.fixedDeltaTime);
        return NodeState.SUCCESS;
    }

    public void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
