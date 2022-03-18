using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderlingEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public SpiderlingWeapon SpiderlingWeapon;
    public HealthComponent HealthComponent;

    private EnemyData _tempEnemyData;
    private HealthData _tempHealthData;

    private Animator _animator;
    
    public SkinnedMeshRenderer Renderer { get; private set; }
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
        _baseColor = Renderer.material.GetColor("_BaseColor");
    }

    private void InitializeData()
    {
        _tempEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        _tempHealthData = ScriptableObject.CreateInstance<HealthData>();
        SpiderlingWeapon.Settings = ScriptableObject.CreateInstance<WeaponData>();
        
        
        //CTOR for variables
        _tempEnemyData.IdleTime = EnemyData.IdleTime;
        _tempEnemyData.PatrolTime = EnemyData.PatrolTime;
        _tempEnemyData.FallClamped = EnemyData.FallClamped;
        _tempEnemyData.CurrentFallSpeed = EnemyData.CurrentFallSpeed;
        _tempEnemyData.ChaseRange = EnemyData.ChaseRange;
        _tempEnemyData.AttackRange = EnemyData.AttackRange;
        _tempEnemyData.MoveClamped = EnemyData.MoveClamped;
        _tempEnemyData.Deceleration = EnemyData.Deceleration;
        _tempEnemyData.Acceleration = EnemyData.Acceleration;
        _tempEnemyData.PatrolMoveClamped = EnemyData.PatrolMoveClamped;
        _tempEnemyData.IdlingState = EnemyData.IdlingState;
        _tempEnemyData.KnockbackSpeed = EnemyData.KnockbackSpeed;
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
        Idle = new Idle(this,_tempEnemyData);
        Patrol = new Patrol(this,_tempEnemyData);

        ChasePlayer = new ChasePlayer(PlayerTransform, this,_tempEnemyData);
        ChaseRange = new Range(PlayerTransform, this,_tempEnemyData.ChaseRange);

        Attack = new Attack(PlayerTransform,this,_tempEnemyData,SpiderlingWeapon);
        AttackRange = new Range(PlayerTransform,this,_tempEnemyData.AttackRange);
        
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
        BlinkRed();
    }

    protected override void Knockback()
    {
        var direction = (PlayerTransform.position - transform.position);
        var directionX = Mathf.Sign(direction.x);
        _tempEnemyData.CurrentHorizontalSpeed = directionX * _tempEnemyData.KnockbackSpeed;
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
            var fallSpeed = _tempEnemyData.CurrentFallSpeed;
            
            _tempEnemyData.CurrentVerticalSpeed -= fallSpeed * Time.fixedDeltaTime;

            if (_tempEnemyData.CurrentVerticalSpeed < _tempEnemyData.FallClamped) _tempEnemyData.CurrentVerticalSpeed = _tempEnemyData.FallClamped;
        } 
    }

    private void CheckForCollisions()
    {
        if (Grounded)
        {
            if (_tempEnemyData.CurrentVerticalSpeed < 0)
            {
                _tempEnemyData.CurrentVerticalSpeed = 0;
            }
        }
    }

    private void SetVelocities()
    {
        SetVelocityX(_tempEnemyData.CurrentHorizontalSpeed);
        SetVelocityY(_tempEnemyData.CurrentVerticalSpeed);
    }
    
    private void BlinkRed()
    {
        Renderer.material.SetColor("_BaseColor", Color.red);
        _lastHitTime = Time.time;
    }

    private void ResetColor()
    {
        var nextFireTime = _lastHitTime + 0.1f;
        if (Time.time - nextFireTime > 0)
        {
            Renderer.material.SetColor("_BaseColor", _baseColor);
        }
    }

    private void HandleAnimations()
    {
        if (_tempEnemyData.CurrentNode == Patrol || _tempEnemyData.CurrentNode == ChasePlayer)
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
