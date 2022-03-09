using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GuardianEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public GuardianWeapon GuardianWeapon;
    public HealthComponent HealthComponent;

    #region Nodes

    public ChasePlayer ChasePlayer { get; private set; }
    public Patrol Patrol { get; private set; }
    public Idle Idle { get; private set; }
    
    public Range ChaseRange { get; private set; }
    
    public Attack Attack { get; private set; }
    
    public Range AttackRange { get; private set; }
    
    private Node _topNode;
    
    #endregion

    private void Awake()
    {
        HealthComponent.OnDamageTaken += OnDamaged;
        HealthComponent.OnDeath += OnDeath;

        ConstructBehaviorTree();
    }

    private void OnDisable()
    {
        HealthComponent.OnDamageTaken -= OnDamaged;
        HealthComponent.OnDeath -= OnDeath;
    }

    private void Update()
    {
        _topNode.Evaluate();
        if (_topNode.NodeState == NodeState.FAILURE)
        {
            Debug.Log("Problems");
        }

        UpdateHitResults();
        Debug.Log(EnemyData.CurrentNode);

        CheckForCollisions();
    }

    private void FixedUpdate()
    {
        CalculateGravity();
        SetVelocities();
    }


    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right
        Idle = new Idle(this,EnemyData);
        Patrol = new Patrol(this,EnemyData);

        ChasePlayer = new ChasePlayer(Player, this,EnemyData);
        ChaseRange = new Range(Player, this,EnemyData.ChaseRange);

        Attack = new Attack(Player,this,EnemyData,GuardianWeapon);
        AttackRange = new Range(Player,this,EnemyData.AttackRange);
        
        //Initialize Parent Nodes from left to right
        Selector idleSelector = new Selector(new List<Node>() { Idle, Patrol });
        Sequence chaseSequence = new Sequence(new List<Node>() { ChaseRange, ChasePlayer });
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, Attack });
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){attackSequence,chaseSequence,idleSelector});
    }

    protected void OnDamaged(HealthComponent arg1, float arg2)
    {
        base.OnDamaged();
        Knockback();
    }

    protected override void Knockback()
    {
        var direction = (Player.transform.position - transform.position);
        var directionX = Mathf.Sign(direction.x);
        EnemyData.CurrentHorizontalSpeed = directionX * EnemyData.KnockbackSpeed;
    }

    protected void OnDeath(HealthComponent arg1, GameObject killer)
    {
        base.OnDeath();
        if (killer != null)
        {
            Debug.Log(string.Format("{0} killed by {1}", name, killer.name));
        }
        
        Destroy(gameObject); 
    }

    public void CalculateGravity()
    {
        if(!Grounded)
        {
            var fallSpeed = EnemyData.CurrentFallSpeed;
            
            EnemyData.CurrentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;

            if (EnemyData.CurrentVerticalSpeed < EnemyData.FallClamped) EnemyData.CurrentVerticalSpeed = EnemyData.FallClamped;
        } 
    }

    private void CheckForCollisions()
    {
        if (Grounded)
        {
            if (EnemyData.CurrentVerticalSpeed < 0)
            {
                EnemyData.CurrentVerticalSpeed = 0;
            }
        }
    }

    private void SetVelocities()
    {
        SetVelocityX(EnemyData.CurrentHorizontalSpeed);
        SetVelocityY(EnemyData.CurrentVerticalSpeed);
    }
    
}

