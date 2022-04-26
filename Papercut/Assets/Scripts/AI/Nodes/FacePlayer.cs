using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FacePlayer : Node
{
    private readonly EnemyBase _ai;
    private readonly Transform _player;
    private Vector2 _direction;
    
    public FacePlayer(EnemyBase ai, Transform playerTransform)
    {
        _ai = ai;
        _player = playerTransform;
    }
    
    public override NodeState Evaluate()
    {
        _direction = (_ai.transform.position - _player.transform.position).normalized;
        _ai.CheckFlip(-(int)Mathf.Sign(_direction.x));
        return NodeState.SUCCESS;
    }
}
