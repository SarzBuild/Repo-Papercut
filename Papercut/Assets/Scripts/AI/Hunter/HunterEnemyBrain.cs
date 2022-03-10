using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HunterEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public HunterWeapon HunterWeapon;
    public HealthComponent HealthComponent;

    private EnemyData _tempEnemyData;
    private HealthData _tempHealthData;
    
    public SkinnedMeshRenderer Renderer { get; private set; }    
    private Color _baseColor;
    
    private float _lastHitTime;
    
    private Transform _baseTransfrom;
    
    #region Nodes

    public RangedAttack Attack { get; private set; }
    
    public Range AttackRange { get; private set; }
    
    public ResetRotation ResetRotation { get; private set; }

    private Node _topNode;
    
    #endregion

    private void Awake()
    {
        InitializeData();
        
        HealthComponent.OnDamageTaken += OnDamaged;
        HealthComponent.OnDeath += OnDeath;
        
        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        _baseColor = Renderer.material.GetColor("_BaseColor");
        
        ConstructBehaviorTree();
    }
    
    private void OnDisable()
    {
        HealthComponent.OnDamageTaken -= OnDamaged;
        HealthComponent.OnDeath -= OnDeath;
    }

    private void Start()
    {
        _baseTransfrom = transform;
        ConstructBehaviorTree();
    }
    
    private void InitializeData()
    {
        _tempEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        _tempHealthData = ScriptableObject.CreateInstance<HealthData>();
        HunterWeapon.Settings = ScriptableObject.CreateInstance<WeaponData>();
        
        
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
    
    
    
    private void Update()
    {
        _topNode.Evaluate();
        if (_topNode.NodeState == NodeState.FAILURE)
        {
            Debug.Log("Problems");
        }

        UpdateHitResults();
        
        ResetColor();
    }


    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right

        Attack = new RangedAttack(Player, this, _tempEnemyData,HunterWeapon);
        AttackRange = new Range(Player, this, _tempEnemyData.AttackRange);
        ResetRotation = new ResetRotation(this, _tempEnemyData, _baseTransfrom);
        
        //Initialize Parent Nodes from left to right
        
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, Attack });
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){attackSequence, ResetRotation});
    }

    private void OnDamaged(HealthComponent arg1, float arg2)
    {
        BlinkRed();
    }
    
    private void OnDeath(HealthComponent arg1, GameObject killer)
    {
        if (killer != null)
        {
            Debug.Log(string.Format("{0} killed by {1}", name, killer.name));
        }
        
        Destroy(gameObject); 
    }


    protected override void Knockback()
    {
        base.Knockback();
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
}

