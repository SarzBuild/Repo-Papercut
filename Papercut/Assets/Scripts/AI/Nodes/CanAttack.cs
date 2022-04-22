using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CanAttack : Node
{
    private readonly EnemyData _enemyData;
    private readonly Collider2D _ownCollider;
    private readonly Collider2D _playerCollider;
    private readonly Collider2D _shieldCollider;

    public CanAttack(EnemyData enemyData, Collider2D ownCollider, Collider2D playerCollider, Collider2D shieldCollider)
    {
        _enemyData = enemyData;
        _ownCollider = ownCollider;
        _playerCollider = playerCollider;
        _shieldCollider = shieldCollider;
    }

    public override NodeState Evaluate()
    {
        if (_enemyData.CanAttack && !_enemyData.IsCharging &&_enemyData.EnergyFull)
        {
            Physics2D.IgnoreCollision(_ownCollider,_playerCollider, true);
            Physics2D.IgnoreCollision(_shieldCollider,_playerCollider, true);
            _enemyData.CurrentHorizontalSpeed = 0;
            return NodeState.SUCCESS;
        }
        return NodeState.FAILURE;
    }

}
