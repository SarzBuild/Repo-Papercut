using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Attack : Node
{
    private readonly Transform _player;
    private readonly EnemyBase _ai;
    private readonly EnemyData _enemyData;
    private readonly WeaponBase _weapon;
    private Vector2 _direction;
    
    public Attack(Transform player, EnemyBase aI, EnemyData enemyData, WeaponBase weapon)
    {
        _player = player;
        _ai = aI;
        _enemyData = enemyData;
        _weapon = weapon;
    }

    public override NodeState Evaluate()
    {
        SetCurrentNode();
        _enemyData.CurrentHorizontalSpeed = 0;
        _weapon.Fire();
        return NodeState.RUNNING;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
