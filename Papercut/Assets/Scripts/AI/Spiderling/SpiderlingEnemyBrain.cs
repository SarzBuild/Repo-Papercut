using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

public class SpiderlingEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public SpiderlingWeapon SpiderlingWeapon;
    public HealthComponent HealthComponent;

    public EnemyData NewEnemyData { get; private set; }
    public HealthData NewHealthData { get; private set; }

    public AttackTrigger AttackTrigger { get; private set; }

    public SpiderlingProfileType SpiderlingType;

    private Animator _animator;

    public SkinnedMeshRenderer Renderer { get; private set; }
    private string _color = "_BaseColor";
    private Color _baseColor;


    private float _lastHitTime;


    public GameObject BloodObject;

    #region Nodes

    public Range AttackRange { get; private set; }
    public WaitBeforeAttack WaitBeforeAttack { get; private set; }
    public Attack Attack { get; private set; }

    public Range ChaseRange { get; private set; }
    public CheckVision CheckVision { get; private set; }
    public AlertNearby AlertNearby { get; private set; }
    public ChasePlayer ChasePlayer { get; private set; }
    public Flee Flee { get; private set; }
    public NotNearEdge NotNearEdge { get; private set; }


    public GoToLastKnowPosition GoToLastKnowPosition { get; private set; }
    public SearchUntilTimerRunOut SearchUntilTimerRunOut { get; private set; }
    
    public Patrol Patrol { get; private set; }
    public Idle Idle { get; private set; }
    
    
    private Node _topNode;
    
    #endregion

    private void Awake()
    {
        AttackTrigger = GetComponentInChildren<AttackTrigger>();
    }

    private void Start()
    {
        _animator = GetComponentInChildren<Animator>();
        PlayerTransform = Player.Instance.transform;
        
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
    }

    private void OnDisable()
    {
        HealthComponent.OnDamageTaken -= OnDamaged;
        HealthComponent.OnDeath -= OnDeath;
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
        //Debug.Log(string.Format("{0} is in {1} state", name, NewEnemyData.CurrentNode));

        CheckForCollisions();

        ResetColor();

        DestroyAfterAnimationEnd();
    }

    private void FixedUpdate()
    {
        CalculateGravity();
        SetVelocities();
    }
    
    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right
        AttackRange = new Range(PlayerTransform,transform,NewEnemyData.AttackRange);
        WaitBeforeAttack = new WaitBeforeAttack(NewEnemyData,SpiderlingWeapon.Settings.FireCooldownSec);
        Attack = new Attack(NewEnemyData,SpiderlingWeapon);
        
        ChaseRange = new Range(PlayerTransform, transform,NewEnemyData.ChaseRange);
        CheckVision = new CheckVision(PlayerTransform, _ceilingCheck, _groundLayerMask);
        AlertNearby = new AlertNearby(transform,NewEnemyData);
        ChasePlayer = new ChasePlayer(PlayerTransform, this,NewEnemyData);
        Flee = new Flee(PlayerTransform,this,NewEnemyData, NewEnemyData.ChaseRange);
        NotNearEdge = new NotNearEdge(this,NewEnemyData);

        GoToLastKnowPosition = new GoToLastKnowPosition(this,NewEnemyData);

        Idle = new Idle(this,NewEnemyData);
        Patrol = new Patrol(this,NewEnemyData);
        

        //Initialize Parent Nodes from left to right
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, WaitBeforeAttack, Attack });


        Selector routeSelector = DetermineSpiderlingTypeSequence();

        //Selector routeSelector = new Selector(new List<Node>() { ChasePlayer });
        Sequence chaseSequence = new Sequence(new List<Node>() { ChaseRange, CheckVision, AlertNearby, routeSelector });

        //Sequence searchSequence = new Sequence(new List<Node>() { GoToLastKnowPosition });
        
        Selector idleSelector = new Selector(new List<Node>() { Idle, Patrol });

        Sequence knowSequence = new Sequence(new List<Node>() { NotNearEdge, GoToLastKnowPosition });
        
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){attackSequence, chaseSequence, knowSequence, idleSelector});
    }

    private Selector DetermineSpiderlingTypeSequence()
    {
        switch (SpiderlingType)
        {
            case SpiderlingProfileType.Random:
                var random = Random.Range(0, 2);
                switch (random)
                {
                    case 0:
                        return new Selector(new List<Node>() { ChasePlayer });
                    case 1:
                        return new Selector(new List<Node>() { Flee });
                    case 2:
                        return new Selector(new List<Node>(){ new Sequence(new List<Node>() { NotNearEdge, ChasePlayer })});
                }
                break;
            case SpiderlingProfileType.Careful:
                return new Selector(new List<Node>(){ new Sequence(new List<Node>() { NotNearEdge, ChasePlayer })});
            case SpiderlingProfileType.Fearful:
                return new Selector(new List<Node>() { Flee });
            case SpiderlingProfileType.Aggresive:
                return new Selector(new List<Node>() { ChasePlayer });
            default:
                throw new ArgumentOutOfRangeException();
        }
        return null;
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
        SetVelocityX(NewEnemyData.CurrentHorizontalSpeed);
        SetVelocityY(NewEnemyData.CurrentVerticalSpeed);
    }
    

    protected void OnDamaged(HealthComponent arg1, float arg2, GameObject arg3, Vector2 knockbackMultiplier)
    {
        base.OnDamaged();
        Knockback();
        BlinkRed();
        Instantiate(BloodObject, transform.position, Quaternion.Inverse(transform.rotation));
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

    protected void OnDeath(HealthComponent arg1, GameObject killer)
    {
        base.OnDeath();
        if (killer != null)
        {
            Debug.Log(string.Format("{0} killed by {1}", name, killer.name));
        }
        SetAnimations("dead",new List<string>(){"idle","attack","walk"});
        NewEnemyData.CurrentHorizontalSpeed = 0f;
    }

    private void DestroyAfterAnimationEnd()
    {
        if (_animator.GetCurrentAnimatorStateInfo(0).IsName("Death"))
        {
            SetAnimations("dead",new List<string>(){"idle","attack","walk"});
            if (_animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1f)
            {
                Instantiate(BloodObject,transform.position,Quaternion.Inverse(transform.rotation));
                Instantiate(BloodObject,transform.position,transform.rotation);
                Destroy(gameObject); 
            }
        }
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
        if(_animator.GetBool("dead")) return;
        if (NewEnemyData.CurrentNode == Patrol || NewEnemyData.CurrentNode == ChasePlayer)
        {
            SetAnimations("walk",new List<string>(){"idle","attack"});
        }
        else if (NewEnemyData.CurrentNode == Attack)
        {
            SetAnimations("attack", new List<string>(){"walk","idle"});
        }
        else
        {
            SetAnimations("idle",new List<string>(){"walk","attack"});
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
        Gizmos.DrawWireSphere(transform.position, EnemyData.ChaseRange);
        Gizmos.color = Color.cyan;
        
        
        if (NewEnemyData != null)
        {
            Gizmos.DrawLine(NewEnemyData.LastKnowPlayerLocation, NewEnemyData.LastKnowPlayerLocation/20);
            Gizmos.DrawWireSphere(NewEnemyData.LastKnowPlayerLocation,0.2f);
            Gizmos.DrawWireSphere((NewEnemyData.PredictedPlayerDirection/20)+NewEnemyData.LastKnowPlayerLocation,0.5f);
            Gizmos.color = Color.red;
            Gizmos.DrawLine((NewEnemyData.LastKnowPlayerLocation/20), NewEnemyData.PredictedPlayerDirection+NewEnemyData.LastKnowPlayerLocation);
        }
        
    }
}
