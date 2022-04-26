using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Range : Node
{
    private readonly Transform _target;
    private readonly Transform _origin;
    private readonly float _range;

    public Range(Transform player, Transform origin, float range)
    {
        _target = player;
        _origin = origin;
        _range = range;
    }

    public override NodeState Evaluate()
    {
        var distance = Vector3.Distance(_target.position, _origin.position);
        return distance <= _range ? NodeState.SUCCESS : NodeState.FAILURE;
    }
}
