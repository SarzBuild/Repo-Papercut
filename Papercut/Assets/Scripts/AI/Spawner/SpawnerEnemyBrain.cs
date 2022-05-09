using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnerEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public SpawnerWeapon SpawnerWeapon;
    public HealthComponent HealthComponent;

    private EnemyData NewEnemyData;
    private HealthData _tempHealthData;
    
    public SkinnedMeshRenderer Renderer { get; private set; }
    private Color _baseColor;
    
    private float _lastHitTime;
    
    public GameObject BloodObject;
    #region Nodes

    //public ChasePlayer ChasePlayer { get; private set; }
    public Patrol Patrol { get; private set; }
    public Idle Idle { get; private set; }
    
    public Range FleeRange { get; private set; }
    
    public Flee Flee { get; private set; }
    
    public Attack Attack { get; private set; }
    
    public Range AttackRange { get; private set; }

    private Node _topNode;
    
    #endregion
    

    private void Start()
    {
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
        NewEnemyData = ScriptableObject.CreateInstance<EnemyData>();
        _tempHealthData = ScriptableObject.CreateInstance<HealthData>();
        SpawnerWeapon.Settings = ScriptableObject.CreateInstance<WeaponData>();
        
        
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
        NewEnemyData.StartingState = EnemyData.StartingState;
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
        
        Attack = new Attack(NewEnemyData,SpawnerWeapon);
        AttackRange = new Range(PlayerTransform,transform,NewEnemyData.AttackRange);

        FleeRange = new Range(PlayerTransform,transform,NewEnemyData.ChaseRange);
        Flee = new Flee(PlayerTransform, this, NewEnemyData, NewEnemyData.AttackRange);

        //Initialize Parent Nodes from left to right
        Selector idleSelector = new Selector(new List<Node>() { Idle, Patrol });
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, Attack });
        Sequence fleeSequence = new Sequence(new List<Node>() { FleeRange,Flee });
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){fleeSequence,attackSequence,idleSelector});
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
        SetVelocityX(NewEnemyData.CurrentHorizontalSpeed);
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
}
