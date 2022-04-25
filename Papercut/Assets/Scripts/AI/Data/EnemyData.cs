using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum SpiderlingProfileType { Careful, Fearful, Random }


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
    [HideInInspector] public RandomizationType RandomizationStrength;
    [HideInInspector] public float IdleTime = 5f;
    [HideInInspector] public float PatrolTime = 5f;
    [HideInInspector] public float ChaseRange = 8f;
    [HideInInspector] public float AttackRange = 1.3f;
    [HideInInspector] public float KnockbackSpeed = 2f;
    [HideInInspector] public float Acceleration = 10f;
    [HideInInspector] public float Deceleration = 15f;
    [HideInInspector] public float CurrentVerticalSpeed, CurrentHorizontalSpeed;
    [HideInInspector] public float StartingFallSpeed = 12f;
    [HideInInspector] public float FallClamped = -40f;
    [HideInInspector] public float MoveClamped = 8f;
    [HideInInspector] public float PatrolMoveClamped = 3f;
    [HideInInspector] public int IdlingState = 0;
    
    [HideInInspector] public Vector2 AttackKnockbackForce;
    [HideInInspector] public Vector2 boxCastSize;
    
    //Spiderling ONLY Data
    [HideInInspector] public float JumpYVelocity;
    [HideInInspector] public float JumpXVelocity;
    [HideInInspector] public Vector3 LastKnowPlayerLocation;
    [HideInInspector] public bool SearchingForTarget;
    [HideInInspector] public float AlertRange = 20f;
    [HideInInspector] public Vector3 PredictedPlayerDirection;
    
    [HideInInspector] public float SearchForTargetTime = 5f;
    
    //Guard ONLY Data
    [HideInInspector] public bool IsStunned;
    [HideInInspector] public bool HasReachedTarget;
    [HideInInspector] public float StunnedTime;
    [HideInInspector] public bool CanAttack;
    [HideInInspector] public bool IsCharging;
    [HideInInspector] public float ExitedCharging;
    [HideInInspector] public bool HasTouchedPlayer;
    [HideInInspector] public bool EnergyFull;
    public float MaxChargeTime = 5f;
    public float CollisionDamage = 10f;

}
