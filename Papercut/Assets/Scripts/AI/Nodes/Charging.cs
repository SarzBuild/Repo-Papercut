using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Charging : Node
{
    private readonly EnemyData _enemyData;
    private readonly EnemyBase _ai;
    private readonly Collider2D _ownCollider;
    private readonly Collider2D _playerCollider;
    private readonly Collider2D _shieldCollider;
    private float timer;
    
    public Charging(EnemyData enemyData, EnemyBase ai, Collider2D ownCollider, Collider2D playerCollider, Collider2D shieldCollider)
    {
        _enemyData = enemyData;
        _ai = ai;
        _ownCollider = ownCollider;
        _playerCollider = playerCollider;
        _shieldCollider = shieldCollider;
    }

    public override NodeState Evaluate()
    {
        if (_enemyData.IsCharging)
        {
            SetCurrentNode();
            
            timer += Time.fixedDeltaTime;
            _enemyData.CanAttack = false;
            ReinitiateCollisions(new List<Collider2D>(){_ownCollider,_shieldCollider});
            Debug.Log(timer);
            
            if (_ai.WallFrontHit || _ai.WallBackHit) //Check if hit wall 
            {
                _enemyData.IsStunned = true;
                SetStateOnChargeEnd();
                Debug.Log("CHARGE STOPPED FROM WALLS");
                return NodeState.SUCCESS;
            }
            if (_enemyData.HasTouchedPlayer) //Check if hit player
            {
                Debug.Log("CHARGE STOPPED FROM HIT PLAYER");
                SetStateOnChargeEnd();
                return NodeState.SUCCESS; 
            }
            if (timer > _enemyData.MaxChargeTime) //If they've been charging for a while, they stop
            {
                Debug.Log("CHARGE STOPPED FROM EXCEED TIME");
                SetStateOnChargeEnd();
                return NodeState.SUCCESS;
            }

            //Set direction in facing direction
            _ai.CheckFlip(_ai.FacingDirection);

            return NodeState.RUNNING;
        }
        return NodeState.FAILURE;
    }

    private void SetCurrentNode()
    {
        _enemyData.CurrentNode = this;
    }

    private void ReinitiateCollisions(List<Collider2D> colliders)
    {
        for (int i = 0; i < colliders.Count; i++)
        {
            Physics2D.IgnoreCollision(colliders[i],_playerCollider,false);
        }
    }

    private void SetStateOnChargeEnd()
    {
        _enemyData.CanAttack = false;
        _ai.SetVelocityX(0);
        _enemyData.IsCharging = false;
        _enemyData.ExitedCharging = Time.time;
        _enemyData.EnergyFull = false;
        timer = 0;
    }
}
