using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderlingEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public SpiderlingWeapon SpiderlingWeapon;
    public HealthComponent HealthComponent;

    public EnemyData NewEnemyData { get; private set; }
    public HealthData NewHealthData { get; private set; }

    private Animator _animator;
    
    public SkinnedMeshRenderer Renderer { get; private set; }
    private string _color = "_BaseColor";
    private Color _baseColor;
    
    
    private float _lastHitTime;
    
    #region Nodes

    public ChasePlayer ChasePlayer { get; private set; }
    public Patrol Patrol { get; private set; }
    public Idle Idle { get; private set; }
    
    public Range ChaseRange { get; private set; }
    
    public Attack Attack { get; private set; }
    
    public Range AttackRange { get; private set; }

    private Node _topNode;
    
    #endregion

    private void Start()
    {
        _animator = GetComponentInChildren<Animator>();
        PlayerTransform = Player.Instance.transform;
        
        InitializeData();

        HealthComponent.OnDamageTaken += OnDamaged;
        HealthComponent.OnDeath += OnDeath;

        ConstructBehaviorTree();

        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        _baseColor = Renderer.material.GetColor(_color);
    }

    private void InitializeData()
    {
        NewEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        NewHealthData = ScriptableObject.CreateInstance<HealthData>();
        SpiderlingWeapon.Settings = ScriptableObject.CreateInstance<WeaponData>();
        
        
        //CTOR for variables
        NewEnemyData.IdleTime = EnemyData.IdleTime;
        NewEnemyData.PatrolTime = EnemyData.PatrolTime;
        NewEnemyData.FallClamped = EnemyData.FallClamped;
        NewEnemyData.CurrentFallSpeed = EnemyData.CurrentFallSpeed;
        NewEnemyData.ChaseRange = EnemyData.ChaseRange;
        NewEnemyData.AttackRange = EnemyData.AttackRange;
        NewEnemyData.MoveClamped = EnemyData.MoveClamped;
        NewEnemyData.Deceleration = EnemyData.Deceleration;
        NewEnemyData.Acceleration = EnemyData.Acceleration;
        NewEnemyData.PatrolMoveClamped = EnemyData.PatrolMoveClamped;
        NewEnemyData.IdlingState = EnemyData.IdlingState;
        NewEnemyData.KnockbackSpeed = EnemyData.KnockbackSpeed;
    }

    private void OnDisable()
    {
        HealthComponent.OnDamageTaken -= OnDamaged;
        HealthComponent.OnDeath -= OnDeath;
    }

    private void Update()
    {
        HandleAnimations();
        _topNode.Evaluate();
        if (_topNode.NodeState == NodeState.FAILURE)
        {
            Debug.Log("Problems");
        }

        UpdateHitResults();
        //Debug.Log(string.Format("{0} is in {1} state", name, _tempEnemyData.CurrentNode));

        CheckForCollisions();

        ResetColor();
    }

    private void FixedUpdate()
    {
        CalculateGravity();
        SetVelocities();
    }
    
    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right
        Idle = new Idle(this,NewEnemyData);
        Patrol = new Patrol(this,NewEnemyData);

        ChasePlayer = new ChasePlayer(PlayerTransform, this,NewEnemyData);
        ChaseRange = new Range(PlayerTransform, this,NewEnemyData.ChaseRange);

        Attack = new Attack(PlayerTransform,this,NewEnemyData,SpiderlingWeapon);
        AttackRange = new Range(PlayerTransform,this,NewEnemyData.AttackRange);
        
        //Initialize Parent Nodes from left to right
        Selector idleSelector = new Selector(new List<Node>() { Idle, Patrol });
        Sequence chaseSequence = new Sequence(new List<Node>() { ChaseRange, ChasePlayer });
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, Attack });
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){attackSequence,chaseSequence,idleSelector});
    }
    
    public void CalculateGravity()
    {
        if(!Grounded)
        {
            var fallSpeed = NewEnemyData.CurrentFallSpeed;
            
            NewEnemyData.CurrentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;

            if (NewEnemyData.CurrentVerticalSpeed < NewEnemyData.FallClamped) NewEnemyData.CurrentVerticalSpeed = NewEnemyData.FallClamped;
        } 
    }

    private void CheckForCollisions()
    {
        if (Grounded)
        {
            if (NewEnemyData.CurrentVerticalSpeed < 0)
            {
                NewEnemyData.CurrentVerticalSpeed = 0;
            }
        }
    }

    private void SetVelocities()
    {
        SetVelocityX(NewEnemyData.CurrentHorizontalSpeed);
        SetVelocityY(NewEnemyData.CurrentVerticalSpeed);
    }
    

    protected void OnDamaged(HealthComponent arg1, float arg2)
    {
        base.OnDamaged();
        Knockback();
        BlinkRed();
    }

    protected override void Knockback()
    {
        var direction = (PlayerTransform.position - transform.position);
        var directionX = Mathf.Sign(direction.x);
        NewEnemyData.CurrentHorizontalSpeed = directionX * NewEnemyData.KnockbackSpeed;
    }
    
    private void BlinkRed()
    {
        Renderer.material.SetColor(_color, Color.red);
        _lastHitTime = Time.time;
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

    public void UpdateLastPlayerKnownPosition(Vector2 value)
    {
        NewEnemyData.LastKnowPlayerLocation = value;
    }
    

    private void ResetColor()
    {
        var nextFireTime = _lastHitTime + 0.1f;
        if (Time.time - nextFireTime > 0)
        {
            Renderer.material.SetColor(_color, _baseColor);
        }
    }

    private void HandleAnimations()
    {
        if (NewEnemyData.CurrentNode == Patrol || NewEnemyData.CurrentNode == ChasePlayer)
        {
            _animator.SetBool("walk", true);
        }
        else
        {
            _animator.SetBool("walk",false);
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.magenta;
        Gizmos.DrawWireSphere(transform.position, EnemyData.ChaseRange);
    }
}
