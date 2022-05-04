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
    public HealthData NewHealthData;

    public AttackTrigger AttackTrigger;

    public Transform MiddlePoint;
    
    public SkinnedMeshRenderer Renderer { get; private set; }
    private string _color = "_BaseColor";
    private Color _baseColor;

    private float _lastHitTime;

    private Animator _animator;

    public GameObject BloodObject;

    public Collider2D ShieldCollider;

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
        ShieldCollider = GetComponentInChildren<Collider2D>();
    }

    private void Start()
    {
        _animator = GetComponentInChildren<Animator>();
        
        PlayerTransform = Player.Instance.transform;
        PlayerCollider = PlayerTransform.GetComponent<Collider2D>();
        
        InitializeData();

        HealthComponent.OnDamageTaken += OnDamaged;
        HealthComponent.OnDeath += OnDeath;

        ConstructBehaviorTree();
        
        Renderer = GetComponentInChildren<SkinnedMeshRenderer>();
        Renderer.material.SetColor(_color, Color.white);
        _baseColor = Renderer.material.GetColor(_color);
    }

    private void InitializeData()
    {
        NewEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        NewHealthData = ScriptableObject.CreateInstance<HealthData>();
        
        
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
        NewEnemyData.MaxChargeTime = EnemyData.MaxChargeTime;
    }
    
    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right
        StunnedWait = new StunnedWait(NewEnemyData);

        Charging = new Charging(NewEnemyData, this, OwnCollider, PlayerCollider, ShieldCollider);
        
        CanAttack = new CanAttack(NewEnemyData,OwnCollider,PlayerCollider,ShieldCollider);
        WaitBeforeAttack = new WaitBeforeAttack(NewEnemyData,GuardianWeapon.Settings.FireCooldownSec);
        Attack = new Attack(NewEnemyData, GuardianWeapon);

        CheckVision = new CheckVision(PlayerTransform, MiddlePoint, _groundLayerMask);
        TooCloseRange = new Range(PlayerTransform, MiddlePoint, NewEnemyData.AttackRange);
        Reposition = new Flee(PlayerTransform, this, NewEnemyData, NewEnemyData.ChaseRange);
        
        ChaseRange = new Range(PlayerTransform, MiddlePoint,NewEnemyData.ChaseRange+1f);
        FacePlayer = new FacePlayer(this, PlayerTransform);
        SetAttack = new SetAttack(NewEnemyData);
        
        Idle = new Idle(this,NewEnemyData);
        Patrol = new Patrol(this,NewEnemyData);

        
        //Initialize Parent Nodes from left to right
        
        Sequence attackSequence = new Sequence(new List<Node>() { CanAttack, WaitBeforeAttack, Attack });

        Sequence repositionSequence = new Sequence(new List<Node>() { CheckVision, TooCloseRange, Reposition });
        
        Sequence chaseSequence = new Sequence(new List<Node>() { CheckVision, ChaseRange, FacePlayer, SetAttack });

        Selector idleSelector = new Selector(new List<Node>() { Idle, Patrol });
        
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){StunnedWait,Charging, attackSequence, repositionSequence, chaseSequence, idleSelector});
    }
    
    private void Update()
    {
        HandleAnimations();

        if (!_animator.GetBool("dead"))
        {
            _topNode.Evaluate();
        }
        if (_topNode.NodeState == NodeState.FAILURE)
        {
            Debug.Log("Problems");
        }

        UpdateHitResults();
        UpdateCheckLedge();

        CheckForCollisions();
        
        RechargeEnergy();
        
        ResetColor();
        
        DestroyAfterAnimationEnd();
    }

    private void FixedUpdate()
    {
        CalculateGravity();
        SetVelocities();
    }


    private void OnDisable()
    {
        HealthComponent.OnDamageTaken -= OnDamaged;
        HealthComponent.OnDeath -= OnDeath;
    }

    protected void OnDamaged(HealthComponent arg1, float arg2, GameObject arg3, Vector2 knockbackMultiplier)
    {
        base.OnDamaged();
        Knockback();
        BlinkRed();
        Instantiate(BloodObject, MiddlePoint.transform.position, transform.rotation);
        _animator.SetTrigger("damaged");
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

    private void ResetColor()
    {
        var nextFireTime = _lastHitTime + 0.1f;
        if (Time.time - nextFireTime > 0)
        {
            Renderer.material.SetColor(_color, _baseColor);
        }
    }

    protected void OnDeath(HealthComponent arg1, GameObject killer)
    {
        base.OnDeath();
        if (killer != null)
        {
            Debug.Log(string.Format("{0} killed by {1}", name, killer.name));
        }
        
        SetAnimations("dead",new List<string>(){"idle","attack","charging","stunned","chargingUp","walk"});
    }
    
    private void DestroyAfterAnimationEnd()
    {
        if (_animator.GetCurrentAnimatorStateInfo(0).IsName("Death"))
        {
            SetAnimations("dead",new List<string>(){"idle","attack","charging","stunned","chargingUp","walk"});
            if (_animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1f)
            {
                Destroy(gameObject); 
            }
        }
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

        if ((!CheckLedge || WallBackHit) && NewEnemyData.CurrentNode == Patrol)
        {
            Patrol.StopPatrol();
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

    private void RechargeEnergy()
    {
        var nextFireTime = NewEnemyData.ExitedCharging + GuardianWeapon.Settings.FireCooldownSec;
        if (Time.time - nextFireTime > 0)
        {
            NewEnemyData.EnergyFull = true;
        }
    }

    /*private void OnCollisionEnter2D(Collision2D col) //On Collisions Damage
    {
        if (col.gameObject.layer == GenericManager.PlayerLayerMask)
        {
            var healthComponent = col.transform.GetComponent<HealthComponent>();
            if (healthComponent != null)
            {
                print("PLAYER HIT ON COLLISIONS" + col.otherCollider.name);
                healthComponent.DealDamage(EnemyData.CollisionDamage,gameObject,Vector2.zero);
            } 
        }
    }*/
    
    private void HandleAnimations()
    {
        if(_animator.GetBool("dead")) return;
        if (NewEnemyData.CurrentNode == Patrol || NewEnemyData.CurrentNode == Reposition)
        {
            SetAnimations("walk",new List<string>(){"idle","attack","charging","stunned","chargingUp"});
        }
        else if (NewEnemyData.CurrentNode == Attack)
        {
            SetAnimations("attack",new List<string>(){"walk","idle","charging","stunned","chargingUp"});
        }
        else if(NewEnemyData.CurrentNode == Charging)
        {
            SetAnimations("charging",new List<string>(){"walk","attack","idle","stunned","chargingUp"});
        }
        else if (NewEnemyData.CurrentNode == StunnedWait)
        {
            SetAnimations("stunned",new List<string>(){"walk","attack","charging","idle","chargingUp"});
        }
        else if (NewEnemyData.CurrentNode == WaitBeforeAttack)
        {
            SetAnimations("chargingUp",new List<string>(){"walk","attack","charging","stunned","idle"});
        }
        else
        {
            SetAnimations("idle",new List<string>(){"walk","attack","charging","stunned","chargingUp"});
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
    
    private void OnDrawGizmos()
    {
        Gizmos.color = Color.magenta;
        Gizmos.DrawWireSphere(MiddlePoint.position, EnemyData.ChaseRange);
        Gizmos.color = Color.cyan;
        Gizmos.DrawWireCube(_rightWallCheck.position,EnemyData.boxCastSize);

    }
}


