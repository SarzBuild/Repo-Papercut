using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum SpiderlingProfileType { Careful, Fearful, Aggresive, Random }

[CreateAssetMenu(fileName = "newEnemyData", menuName = "Data/Enemy/EnemyData")]
public class EnemyData : ScriptableObject
{
    public enum EnemyType { Spiderling, Guardian, Hunter, Spawner }
    public enum RandomizationType { Heavy, Medium, Low }
    
    public bool ShowDebugValues;
    
    public Node CurrentNode; //Used for animations

    public EnemyType Type;
    
    //Values are hidden since editor script re-write fields.
    //Shared Data
    [HideInInspector] [SerializeField] public RandomizationType RandomizationStrength;
    [HideInInspector] [SerializeField] public float IdleTime = 5f;
    [HideInInspector] [SerializeField] public float PatrolTime = 5f;
    [HideInInspector] [SerializeField] public float ChaseRange = 8f;
    [HideInInspector] [SerializeField] public float AttackRange = 1.3f;
    [HideInInspector] [SerializeField] public float KnockbackSpeed = 2f;
    [HideInInspector] [SerializeField] public float Acceleration = 10f;
    [HideInInspector] [SerializeField] public float Deceleration = 15f;
    [HideInInspector] [SerializeField] public float CurrentVerticalSpeed, CurrentHorizontalSpeed;
    [HideInInspector] [SerializeField] public float StartingFallSpeed = 12f;
    [HideInInspector] [SerializeField] public float FallClamped = -40f;
    [HideInInspector] [SerializeField] public float MoveClamped = 8f;
    [HideInInspector] [SerializeField] public float PatrolMoveClamped = 3f;
    [HideInInspector] [SerializeField] public int StartingState = 0;
    
    [HideInInspector] [SerializeField] public Vector2 AttackKnockbackForce;
    [HideInInspector] [SerializeField] public Vector2 boxCastSize;
    
    //Spiderling ONLY Data
    [HideInInspector] [SerializeField] public float JumpYVelocity;
    [HideInInspector] [SerializeField] public float JumpXVelocity;
    [HideInInspector] [SerializeField] public Vector3 LastKnowPlayerLocation;
    [HideInInspector] [SerializeField] public bool SearchingForTarget;
    [HideInInspector] [SerializeField] public float AlertRange = 20f;
    [HideInInspector] [SerializeField] public Vector3 PredictedPlayerDirection;
    
    [HideInInspector] [SerializeField] public float SearchForTargetTime = 5f;

    [HideInInspector] [SerializeField] public float SearchTimerCountdown;
    [HideInInspector] [SerializeField] public bool HasReachedTarget;
    
    //Guard ONLY Data
    [HideInInspector] [SerializeField] public bool IsStunned;
    [HideInInspector] [SerializeField] public float StunnedTime = 2;
    [HideInInspector] [SerializeField] public bool CanAttack;
    [HideInInspector] [SerializeField] public bool IsCharging;
    [HideInInspector] [SerializeField] public float ExitedCharging;
    [HideInInspector] [SerializeField] public bool HasTouchedPlayer;
    [HideInInspector] [SerializeField] public bool EnergyFull;
    [HideInInspector] [SerializeField] public float MaxChargeTime = 5f;
    [HideInInspector] [SerializeField] public float TooCloseRange;
    //public float CollisionDamage = 10f;

}
