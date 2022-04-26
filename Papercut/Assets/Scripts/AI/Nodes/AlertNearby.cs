using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AlertNearby : Node
{
    private readonly Transform _origin;
    private readonly EnemyData _enemyData;
    
    public AlertNearby(Transform origin, EnemyData enemyData)
    {
        _origin = origin;
        _enemyData = enemyData;
    }
    
    public override NodeState Evaluate()
    {
        SetCurrentNode();
        var hits = Physics2D.OverlapCircleAll(_origin.position, _enemyData.AlertRange);
        if (hits.Length <= 0) return NodeState.SUCCESS;
        foreach (var i in hits)
        {
            if (i.transform.gameObject.layer != GenericManager.EnemyLayerMask)
            {
                break;
            }

            var checks = Physics2D.RaycastAll(_origin.position, i.transform.position, Mathf.Infinity, GenericManager.GroundLayerMask);
            if (checks.Length > 0)
            {
                break;
            }

            var enemy = i.transform.GetComponent<SpiderlingEnemyBrain>();
            if (enemy)
            {
                enemy.UpdateLastPlayerKnownPosition(_enemyData.LastKnowPlayerLocation);
                enemy.NewEnemyData.SearchingForTarget = true;
            }
            
        }
        return NodeState.SUCCESS;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }
}
