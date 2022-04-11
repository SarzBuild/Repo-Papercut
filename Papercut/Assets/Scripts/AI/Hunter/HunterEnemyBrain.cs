using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HunterEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public HunterWeapon HunterWeapon;
    public HealthComponent HealthComponent;

    public EnemyData NewEnemyData;
    public HealthData NewHealthData;

    public SkinnedMeshRenderer Renderer { get; private set; }
    private Color _baseColor;

    private float _lastHitTime;

    private Transform _baseTransfrom;

    private Animator _animator;


    public GameObject BloodObject;

    #region Nodes

    public RangedAttack Attack { get; private set; }

    public Range AttackRange { get; private set; }

    public CheckVision CheckVision { get; private set; }

    public ResetRotation ResetRotation { get; private set; }

    private Node _topNode;
    
    #endregion
    
    private void OnDisable()
    {
        HealthComponent.OnDamageTaken -= OnDamaged;
        HealthComponent.OnDeath -= OnDeath;
    }

    private void Start()
    {
        _animator = GetComponentInChildren<Animator>();
        PlayerTransform = Player.Instance.transform;
        
        InitializeData();
        
        HealthComponent.OnDamageTaken += OnDamaged;
        HealthComponent.OnDeath += OnDeath;

        _baseTransfrom = transform;
        
        ConstructBehaviorTree();
        
        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        _baseColor = Renderer.material.GetColor("_BaseColor");
    }
    
    private void InitializeData()
    {
        NewEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        NewHealthData = ScriptableObject.CreateInstance<HealthData>();
        HunterWeapon.Settings = ScriptableObject.CreateInstance<WeaponData>();
        
        
        //CTOR for variables
        NewEnemyData.IdleTime = EnemyData.IdleTime;
        NewEnemyData.PatrolTime = EnemyData.PatrolTime;
        NewEnemyData.FallClamped = EnemyData.FallClamped;
        NewEnemyData.StartingFallSpeed = EnemyData.StartingFallSpeed;
        NewEnemyData.ChaseRange = EnemyData.ChaseRange;
        NewEnemyData.AttackRange = EnemyData.AttackRange;
        NewEnemyData.MoveClamped = EnemyData.MoveClamped;
        NewEnemyData.Deceleration = EnemyData.Deceleration;
        NewEnemyData.Acceleration = EnemyData.Acceleration;
        NewEnemyData.PatrolMoveClamped = EnemyData.PatrolMoveClamped;
        NewEnemyData.IdlingState = EnemyData.IdlingState;
        NewEnemyData.KnockbackSpeed = EnemyData.KnockbackSpeed;
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
        
        ResetColor();
        
        DestroyAfterAnimationEnd();
    }


    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right

        Attack = new RangedAttack(PlayerTransform, this, NewEnemyData,HunterWeapon);
        AttackRange = new Range(PlayerTransform, transform, NewEnemyData.AttackRange);
        ResetRotation = new ResetRotation(this, NewEnemyData, _baseTransfrom);
        CheckVision = new CheckVision(PlayerTransform, transform, NewEnemyData, _groundLayerMask);
        
        //Initialize Parent Nodes from left to right
        
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, CheckVision, Attack });
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){attackSequence, ResetRotation});
    }

    private void OnDamaged(HealthComponent arg1, float arg2, GameObject arg3, Vector2 knockbackMultiplier)
    {
        BlinkRed();
        Instantiate(BloodObject, transform.position, Quaternion.Inverse(transform.rotation));
        _animator.SetTrigger("damaged");
    }
    
    private void OnDeath(HealthComponent arg1, GameObject killer)
    {
        if (killer != null)
        {
            Debug.Log(string.Format("{0} killed by {1}", name, killer.name));
        }
        
        _animator.SetBool("dead",true);
    }
    
    private void DestroyAfterAnimationEnd()
    {
        if (_animator.GetCurrentAnimatorStateInfo(0).IsName("Death"))
        {
            if (_animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1f)
            {
                Instantiate(BloodObject,transform.position,Quaternion.Inverse(transform.rotation));
                Instantiate(BloodObject,transform.position,transform.rotation);
                Destroy(gameObject); 
            }
        }
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
    
    private void HandleAnimations()
    {
        if (NewEnemyData.CurrentNode == Attack)
        {
            SetAnimations("attack",new List<string>(){"idle"});
        }
        else
        {
            SetAnimations("idle",new List<string>(){"attack"});
        }
    }
    
    private void SetAnimations(string active, List<string> inactive)
    {
        _animator.SetBool(active,true);
        foreach (var i in inactive)
        {
            _animator.SetBool(i,false);    
        }
    }
}

