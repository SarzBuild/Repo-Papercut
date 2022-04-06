using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChasePlayer : Node
{
    private readonly Transform _player;
    private readonly EnemyBase _ai;
    private EnemyData _enemyData;
    private Vector2 _direction;
    
    private bool _trigger;
    private Vector2 _predictedPlayerDirection;
    private Vector2 _lastPosition;
    
    public ChasePlayer(Transform player, EnemyBase aI, EnemyData enemyData)
    {
        _player = player;
        _ai = aI;
        _enemyData = enemyData;
    }

    public override NodeState Evaluate()
    {
        SetCurrentNode();

        CheckDirection();

        _enemyData.PredictedPlayerDirection = (_player.transform.position - _enemyData.LastKnowPlayerLocation) / Time.deltaTime;
        _enemyData.LastKnowPlayerLocation = _player.transform.position;
        
        _enemyData.SearchingForTarget = true;
        _enemyData.HasReachedTarget = false;
        
        var distance = Vector2.Distance( _player.transform.position, _ai.transform.position);
        if (distance > _enemyData.AttackRange)
        {
            _enemyData.CurrentHorizontalSpeed += -_direction.x * _enemyData.Acceleration * Time.deltaTime;

            _enemyData.CurrentHorizontalSpeed = Mathf.Clamp(_enemyData.CurrentHorizontalSpeed, -_enemyData.MoveClamped, _enemyData.MoveClamped);

            return NodeState.RUNNING;
        }
        
        _enemyData.CurrentHorizontalSpeed = Mathf.MoveTowards(_enemyData.CurrentHorizontalSpeed, 0, _enemyData.Deceleration * Time.fixedDeltaTime);
        return NodeState.SUCCESS;
    }

    private void CheckDirection()
    {
        _direction = (_ai.transform.position - _player.transform.position).normalized;
            
        _ai.CheckFlip(-(int)Mathf.Sign(_direction.x));
    }

    public void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
