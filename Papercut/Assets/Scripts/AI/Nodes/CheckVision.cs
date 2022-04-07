using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using UnityEngine;
using Vector2 = UnityEngine.Vector2;

public class CheckVision : Node
{
    private Transform _target;
    private Transform _origin;
    private EnemyData _enemyData;
    private LayerMask _ground;
    
    public CheckVision(Transform target, Transform origin, EnemyData enemyData, LayerMask ground)
    {
        _target = target;
        _origin = origin;
        _enemyData = enemyData;
        _ground = ground;
    }
    
    public override NodeState Evaluate()
    {
        //Checks for visibility of target
        var distance = Vector2.Distance(_target.position, _origin.position);
        var hitWall = Physics2D.Raycast(_target.position, _origin.position, distance, _ground);
        return hitWall ? NodeState.FAILURE : NodeState.SUCCESS;
    }
    
}
