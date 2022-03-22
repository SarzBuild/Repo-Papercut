using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "newEnemyData", menuName = "Data/Enemy/EnemyData")]
public class EnemyData : ScriptableObject
{
    public Node CurrentNode; //Used for animations
    public float IdleTime = 5f;
    public float PatrolTime = 5f;
    public float ChaseRange = 8f;
    public float AttackRange = 1.3f;
    public float KnockbackSpeed = 2f;
    public float Acceleration = 10f;
    public float Deceleration = 15f;
    public float CurrentVerticalSpeed, CurrentHorizontalSpeed;
    public float CurrentFallSpeed = 12f;
    public float FallClamped = -40f;
    public float MoveClamped = 8f;
    public float PatrolMoveClamped = 3f;
    public int IdlingState = 0;
}
