using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class CheckVision : Node
{
    private Transform _target;
    private Transform _origin;
    private float _arc;
    private EnemyData _enemyData;
    
    public CheckVision(Transform target, Transform origin, EnemyData enemyData)
    {
        _target = target;
        _origin = origin;
        _enemyData = enemyData;
    }
    
    public override NodeState Evaluate()
    {
        //Checks if in FOV
        if (Vector2.Dot(_origin.right, _target.position) > 0 && Vector2.Angle(_origin.right, _target.position) < _arc) //In FOV
        {
            //Checks for visibility of target
            var hits = Physics2D.RaycastAll(_origin.position + new Vector3(0, 0.5f), (_target.position + new Vector3(0, 0.5f)) - _origin.position, _enemyData.ChaseRange); //
            foreach (var hit in hits)
            {
                //Check if player is in array
                return hit.transform.gameObject.layer != GenericManager.PlayerLayerMask ? NodeState.RUNNING : NodeState.SUCCESS;
            }
        }
        return NodeState.FAILURE;
    }
}
