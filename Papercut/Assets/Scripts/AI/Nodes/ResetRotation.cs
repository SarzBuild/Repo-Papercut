using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetRotation : Node
{
    private readonly EnemyBase _ai;
    private readonly Transform _transformToGoTo;
    private readonly EnemyData _enemyData;
    
    public ResetRotation(EnemyBase ai, EnemyData enemyData, Transform transform)
    {
        _ai = ai;
        _enemyData = enemyData;
        _transformToGoTo = transform;
    }
    
    public override NodeState Evaluate()
    {
        var angle = Mathf.Atan2(_transformToGoTo.position.y, _transformToGoTo.position.x) * Mathf.Rad2Deg;
        _ai.transform.eulerAngles = Vector3.Lerp(_ai.transform.eulerAngles, new Vector3(0,0, angle), Time.fixedDeltaTime);
        SetCurrentNode();
        return NodeState.RUNNING;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
