using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CanAttack : Node
{
    private readonly EnemyData _enemyData;
    private readonly Collider2D _ownCollider;
    private readonly Collider2D _playercollider;

    public CanAttack(EnemyData enemyData, Collider2D ownCollider, Collider2D playerCollider)
    {
        _enemyData = enemyData;
        _ownCollider = ownCollider;
        _playercollider = playerCollider;
    }

    public override NodeState Evaluate()
    {
        if (_enemyData.CanAttack && !_enemyData.IsCharging)
        {
            Physics2D.IgnoreCollision(_ownCollider,_playercollider, true);
            _enemyData.CurrentHorizontalSpeed = 0;
            return NodeState.SUCCESS;
        }
        return NodeState.FAILURE;
    }

}
