using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using UnityEngine;
using Vector2 = UnityEngine.Vector2;

public class CheckVision : Node
{
    private readonly Transform _target;
    private readonly Transform _origin;
    private readonly LayerMask _ground;
    
    public CheckVision(Transform target, Transform origin, LayerMask ground)
    {
        _target = target;
        _origin = origin;
        _ground = ground;
    }
    
    public override NodeState Evaluate()
    {
        //Checks for visibility of target
        var distance = Vector2.Distance(_target.position, _origin.position);
        var direction = (_target.position - _origin.position).normalized;
        var hitWall = Physics2D.Raycast(_origin.position, direction, distance, _ground);
        return hitWall ? NodeState.FAILURE : NodeState.SUCCESS;
    }
    
}
