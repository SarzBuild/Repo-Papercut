using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Attack : Node
{
    private readonly EnemyData _enemyData;
    private readonly WeaponBase _weapon;
    private Vector2 _direction;
    
    public Attack(EnemyData enemyData, WeaponBase weapon)
    {
        _enemyData = enemyData;
        _weapon = weapon;
    }

    public override NodeState Evaluate()
    {
        SetCurrentNode();
        _weapon.Fire();
        return NodeState.RUNNING;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
