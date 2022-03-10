using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class RangedAttack : Node
{
    private Transform _target;
    private EnemyBase _ai;
    private EnemyData _enemyData;
    private WeaponBase _weapon;
    
    public RangedAttack(Transform target, EnemyBase ai, EnemyData enemyData, WeaponBase weapon)
    {
        _target = target;
        _ai = ai;
        _enemyData = enemyData;
        _weapon = weapon;
    }

    public override NodeState Evaluate()
    {
        SetCurrentNode();
        var aimDirection = (_target.position - _ai.transform.position).normalized;
        _weapon.Fire();

        var angle = Mathf.Atan2(aimDirection.y, aimDirection.x) * Mathf.Rad2Deg;
        _ai.transform.eulerAngles = new Vector3(0, 0, angle);
        return NodeState.RUNNING;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
    
}
