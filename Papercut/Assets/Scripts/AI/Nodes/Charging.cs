using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Charging : Node
{
    private readonly EnemyData _enemyData;
    private readonly EnemyBase _ai;
    private readonly Collider2D _ownCollider;
    private readonly Collider2D _playerCollider;
    private readonly Collider2D _shieldCollider;
    
    public Charging(EnemyData enemyData, EnemyBase ai, Collider2D ownCollider, Collider2D playerCollider, Collider2D shieldCollider)
    {
        _enemyData = enemyData;
        _ai = ai;
        _ownCollider = ownCollider;
        _playerCollider = playerCollider;
        _shieldCollider = shieldCollider;
    }

    public override NodeState Evaluate()
    {
        if (_enemyData.IsCharging)
        {
            SetCurrentNode();
            _enemyData.CanAttack = false;
            Physics2D.IgnoreCollision(_ownCollider,_playerCollider, false);
            Physics2D.IgnoreCollision(_ownCollider,_playerCollider, false);
            //Check if hit wall or player
            if (_ai.WallFrontHit || _ai.WallBackHit || _enemyData.HasTouchedPlayer)
            {
                _enemyData.IsStunned = true;
                _enemyData.CanAttack = false;
                _ai.SetVelocityX(0);
                _enemyData.IsCharging = false;
                _enemyData.ExitedCharging = Time.time;
                _enemyData.EnergyFull = false;
                return NodeState.SUCCESS;
            }

            //Set direction in facing direction
            _ai.CheckFlip(_ai.FacingDirection);

            return NodeState.RUNNING;
        }
        return NodeState.FAILURE;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
