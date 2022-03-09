using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetRotation : Node
{
    private readonly EnemyBase _ai;
    private readonly Transform _transformToGoTo;
    
    public ResetRotation(EnemyBase ai, Transform transform)
    {
        _ai = ai;
        _transformToGoTo = transform;
    }
    
    public override NodeState Evaluate()
    {
        var angle = Mathf.Atan2(_transformToGoTo.position.y, _transformToGoTo.position.x) * Mathf.Rad2Deg;
        _ai.transform.eulerAngles = new Vector2(0, angle);
        
        return NodeState.RUNNING;
    }
}
