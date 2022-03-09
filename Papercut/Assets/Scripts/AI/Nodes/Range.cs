using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Range : Node
{
    private Transform _target;
    private Transform _origin;
    private float _range;

    public Range(Transform player, EnemyBase aI, float range)
    {
        _target = player;
        _origin = aI.transform;
        _range = range;
    }

    public override NodeState Evaluate()
    {
        var distance = Vector3.Distance(_target.position, _origin.position);
        return distance <= _range ? NodeState.SUCCESS : NodeState.FAILURE;
    }
}
