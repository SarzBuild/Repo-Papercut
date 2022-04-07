using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GuardianEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public GuardianWeapon GuardianWeapon;
    public HealthComponent HealthComponent;

    public Collider2D OwnCollider;
    public Collider2D PlayerCollider;
    
    public EnemyData NewEnemyData;
    private HealthData _tempHealthData;

    public AttackTrigger AttackTrigger;

    public Transform MiddlePoint;
    
    public SkinnedMeshRenderer Renderer { get; private set; }
    private Color _baseColor;

    private float _lastHitTime;

    #region Nodes

    public StunnedWait StunnedWait { get; private set; }
    
    public Charging Charging { get; private set; }
    
    public CanAttack CanAttack { get; private set; }
    public WaitBeforeAttack WaitBeforeAttack { get; private set; }
    public Attack Attack { get; private set; }

    public CheckVision CheckVision { get; private set; }
    public Range TooCloseRange { get; private set; }
    public Flee Reposition { get; private set; }
    

    public Range ChaseRange { get; private set; }
    public FacePlayer FacePlayer { get; private set; }
    public SetAttack SetAttack { get; private set; }
    
    public Patrol Patrol { get; private set; }
    public Idle Idle { get; private set; }
    
    

    private Node _topNode;
    
    #endregion

    private void Awake()
    {
        AttackTrigger = GetComponentInChildren<AttackTrigger>();
        OwnCollider = GetComponent<Collider2D>();
    }

    private void Start()
    {
        PlayerTransform = Player.Instance.transform;
        PlayerCollider = Player.Instance.transform.GetComponent<Collider2D>();
        
        InitializeData();

        HealthComponent.OnDamageTaken += OnDamaged;
        HealthComponent.OnDeath += OnDeath;

        ConstructBehaviorTree();
        
        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        _baseColor = Renderer.material.GetColor("_BaseColor");
    }

    private void InitializeData()
    {
        NewEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        _tempHealthData = ScriptableObject.CreateInstance<HealthData>();
        GuardianWeapon.Settings = ScriptableObject.CreateInstance<WeaponData>();
        
        
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

        CheckForCollisions();
        
        RechargeEnergy();
        
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
        StunnedWait = new StunnedWait(NewEnemyData);

        Charging = new Charging(NewEnemyData, this, OwnCollider, PlayerCollider);
        
        CanAttack = new CanAttack(NewEnemyData,OwnCollider,PlayerCollider);
        WaitBeforeAttack = new WaitBeforeAttack(NewEnemyData,2.5f);
        Attack = new Attack(NewEnemyData, GuardianWeapon);

        CheckVision = new CheckVision(PlayerTransform, MiddlePoint, NewEnemyData, _groundLayerMask);
        TooCloseRange = new Range(PlayerTransform, MiddlePoint, NewEnemyData.AttackRange);
        Reposition = new Flee(PlayerTransform, this, NewEnemyData,NewEnemyData.ChaseRange);
        
        ChaseRange = new Range(PlayerTransform, MiddlePoint,NewEnemyData.ChaseRange+1f);
        FacePlayer = new FacePlayer(this, PlayerTransform);
        SetAttack = new SetAttack(NewEnemyData);
        
        Idle = new Idle(this,NewEnemyData);
        Patrol = new Patrol(this,NewEnemyData);

        
        //Initialize Parent Nodes from left to right
        
        Sequence attackSequence = new Sequence(new List<Node>() { CanAttack,WaitBeforeAttack,Attack });

        Sequence repositionSequence = new Sequence(new List<Node>() { CheckVision,TooCloseRange, Reposition });
        
        Sequence chaseSquence = new Sequence(new List<Node>() { CheckVision,ChaseRange, FacePlayer, SetAttack });

        Selector idleSelector = new Selector(new List<Node>() { Idle, Patrol });
        
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){StunnedWait,Charging, attackSequence, repositionSequence,chaseSquence, idleSelector});
    }

    protected void OnDamaged(HealthComponent arg1, float arg2, GameObject arg3, Vector2 knockbackMultiplier)
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
            var fallSpeed = NewEnemyData.StartingFallSpeed;
            
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
        if (!NewEnemyData.IsCharging)
        {
            SetVelocityX(NewEnemyData.CurrentHorizontalSpeed); 
        }
        SetVelocityY(NewEnemyData.CurrentVerticalSpeed);
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
    
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.magenta;
        Gizmos.DrawWireSphere(MiddlePoint.position, EnemyData.ChaseRange);
        Gizmos.color = Color.cyan;
        Gizmos.DrawWireCube(_rightWallCheck.position,EnemyData.boxCastSize);

    }

    private void RechargeEnergy()
    {
        var nextFireTime = NewEnemyData.ExitedCharging + 5;
        if (Time.time - nextFireTime > 0)
        {
            NewEnemyData.EnergyFull = true;
        }
    }

    private void OnCollisionEnter2D(Collision2D col)
    {
        if (col.gameObject.layer == GenericManager.PlayerLayerMask)
        {
            var healthComponent = col.transform.GetComponent<HealthComponent>();
            if (healthComponent != null)
            {
                healthComponent.DealDamage(GuardianWeapon.Settings.Damage,gameObject,Vector2.zero);
            } 
        }
        
    }
}


