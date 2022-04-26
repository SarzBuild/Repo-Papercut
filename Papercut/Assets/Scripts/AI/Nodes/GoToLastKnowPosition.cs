using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GoToLastKnowPosition : Node
{
    private readonly EnemyBase _ai;
    private readonly EnemyData _enemyData;
    private Vector2 _direction;
    //private float _timer;

    public GoToLastKnowPosition(EnemyBase aI, EnemyData enemyData)
    {
        _ai = aI;
        _enemyData = enemyData;
    }
    public override NodeState Evaluate()
    {
        if (_enemyData.SearchingForTarget)
        {
            SetCurrentNode();

            var distX = Mathf.Abs(_enemyData.LastKnowPlayerLocation.x - _ai.transform.position.x);
            var distY = Mathf.Abs(_enemyData.LastKnowPlayerLocation.y - _ai.transform.position.y);

            if (!_enemyData.HasReachedTarget)
            {
                CheckDirection(_enemyData.LastKnowPlayerLocation);
                if (distX > 1)
                {
                    _enemyData.CurrentHorizontalSpeed += -_direction.x * _enemyData.Acceleration * Time.deltaTime;

                    _enemyData.CurrentHorizontalSpeed = Mathf.Clamp(_enemyData.CurrentHorizontalSpeed,
                        -_enemyData.MoveClamped, _enemyData.MoveClamped);
                    
                }
                else if(distX < 1)
                {
                    _enemyData.CurrentHorizontalSpeed = Mathf.MoveTowards(_enemyData.CurrentHorizontalSpeed, 0, _enemyData.Deceleration * Time.fixedDeltaTime);
                }

                if (_enemyData.CurrentHorizontalSpeed == 0)
                {
                    _enemyData.SearchTimer = 0f;
                    _enemyData.HasReachedTarget = true;
                }
            }
            else if(_enemyData.HasReachedTarget)
            {
                _enemyData.SearchTimer += Time.fixedDeltaTime;

                if (_enemyData.SearchTimer > _enemyData.SearchForTargetTime)
                {
                    _enemyData.SearchingForTarget = false;
                    _enemyData.HasReachedTarget = false;
                    _enemyData.SearchTimer = 0;   
                }
                 
                //Try to mimic player's direction
                _enemyData.CurrentHorizontalSpeed += _enemyData.PredictedPlayerDirection.x * _enemyData.Acceleration * Time.deltaTime;

                _enemyData.CurrentHorizontalSpeed = Mathf.Clamp(_enemyData.CurrentHorizontalSpeed, -_enemyData.MoveClamped/2, _enemyData.MoveClamped/2);
                
                CheckDirection(_enemyData.LastKnowPlayerLocation + _enemyData.PredictedPlayerDirection*20);
                
                
            }
            return NodeState.SUCCESS;
        }
        return NodeState.FAILURE;
    }

    private void CheckDirection(Vector3 position)
    {
        _direction = (_ai.transform.position - position).normalized;
            
        _ai.CheckFlip(-(int)Mathf.Sign(_direction.x));
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
