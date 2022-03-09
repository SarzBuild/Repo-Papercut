using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HunterEnemyBrain : EnemyBase
{
    public EnemyData EnemyData;
    public HunterWeapon HunterWeapon;
    public HealthComponent HealthComponent;

    private Transform _baseTransfrom;
    
    #region Nodes

    public RangedAttack Attack { get; private set; }
    
    public Range AttackRange { get; private set; }
    
    public ResetRotation ResetRotation { get; private set; }

    private Node _topNode;
    
    #endregion

    private void Start()
    {
        _baseTransfrom = transform;
        ConstructBehaviorTree();
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
    }


    protected override void ConstructBehaviorTree()
    {
        //Initialize Child Nodes from left to right

        Attack = new RangedAttack(Player,this,EnemyData,HunterWeapon);
        AttackRange = new Range(Player,this,EnemyData.AttackRange);
        ResetRotation = new ResetRotation(this, _baseTransfrom);
        
        //Initialize Parent Nodes from left to right
        
        Sequence attackSequence = new Sequence(new List<Node>() { AttackRange, Attack });
        
        //Initialize Root Node
        _topNode = new Selector(new List<Node>(){attackSequence, ResetRotation});
    }

    protected override void OnDamaged()
    {
        base.OnDamaged();
    }

    protected override void Knockback()
    {
        base.Knockback();
    }

    protected override void OnDeath()
    {
        base.OnDeath();
    }
}

