using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "newPlayerData", menuName = "Data/Player/PlayerData")]
public class PlayerData : ScriptableObject
{
    [FormerlySerializedAs("Description")] 
    [TextArea] public string description;

    [Header("Physics Related : Walking")] 
    
    [SerializeField] public float WalkingSpeed = 6f;
    [SerializeField] public float RunningSpeed = 8f;
    [SerializeField] public float CurrentSpeed = 4;
    [SerializeField] public float RawInputValue;
    
    [SerializeField] public float Acceleration = 90;
    [SerializeField] public float MoveClamped = 13;
    [SerializeField] public float Deceleration = 60f;
    [SerializeField] public float JumpApexBonus = 2;

    public Vector2 Velocity;
    public Vector2 LastPosition;

    [Header("Physics Related : Jumping")] 
    [SerializeField] public float FallClamped = -40f;
    [SerializeField] public float MinimumFallSpeed = 80f;
    [SerializeField] public float MaximumFallSpeed = 120f;
    public float CurrentFallSpeed;
    
    [SerializeField] public float _jumpHeight = 30;
    [SerializeField] public float _jumpApexThreshold = 10f;
    [SerializeField] public float _coyoteTimeThreshold = 0.1f;
    [SerializeField] public float _jumpBuffer = 0.1f;
    [SerializeField] public float _jumpEndEarlyGravityModifier = 3;
    public bool _coyoteUsable;
    public bool _endedJumpEarly = true;
    public float _apexPoint; 
    public float _lastJumpPressed;
    
    public int MaximumJumpCount;
    public int CurrentJumpCount;
    public float TimeBetweenDoubleJump = 0.25f;

    [Header("Physics Related : Others")] 
    
    [SerializeField] public float DashingAcceleration = 1.5f;
    [SerializeField] public float DashingTime = 0.1f;
    [SerializeField] public int MaximumDashCount = 1;
    [SerializeField] public float DashCooldownTime = 2f;
    
    
    public float _currentHorizontalSpeed, _currentVerticalSpeed;
    
    public float _timeLeftGrounded;

    public bool LandingThisFrame;

    public bool CollisionDown;

    public bool WallJumping;
    
    [SerializeField] public bool CanFireWeapon = true;
}
