using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetAttack : Node
{
    private readonly EnemyData _enemyData;

    public SetAttack(EnemyData enemyData)
    {
        _enemyData = enemyData;
    }

    public override NodeState Evaluate()
    {
        if (!_enemyData.CanAttack && !_enemyData.IsCharging && _enemyData.EnergyFull)
        {
            _enemyData.CanAttack = true; 
            return NodeState.SUCCESS;
        }
        return NodeState.FAILURE;
    }

}
