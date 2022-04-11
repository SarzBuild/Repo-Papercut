using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "newPlayerData", menuName = "Data/Player/PlayerData")]
public class PlayerData : ScriptableObject
{
    [FormerlySerializedAs("Description")] 
    [TextArea] public string description;

    [Header("Basic")]
    [SerializeField] public float RawInputValue;
    [SerializeField] public Vector2 Velocity;
    [SerializeField] public Vector2 LastPosition;
    public float LastTimeJumpKeyWasPressed;
    public float CurrentHorizontalSpeed, CurrentVerticalSpeed;
    public bool PlayerLandedThisFrame;

    public bool CollisionDown;
    
    public float TimePlayerStoppedGrounded;

    public LayerMask PlayerLayerMask;

    public float KnockbackSpeed;

    public bool CanBreakWalls;
    
    [Header("On Ground")] 
    
    [SerializeField] public float WalkingSpeed = 6f;
    [SerializeField] public float RunningSpeed = 8f;
    [SerializeField] public float CurrentSpeed = 4;

    [SerializeField] public float Acceleration = 90;
    [SerializeField] public float MoveClamped = 13;
    [SerializeField] public float Deceleration = 60f;

    [Header("In Air")] 
    [SerializeField] public float FallClamped = -40f;
    [SerializeField] public float MinimumFallSpeed = 80f;
    [SerializeField] public float MaximumFallSpeed = 120f;
    [SerializeField] public float CurrentFallSpeed;
    
    [Header("Jumping")]

    [SerializeField] public int MaximumJumpCount;
    [SerializeField] public int CurrentJumpCount;
    [SerializeField] public float TimeBetweenDoubleJump = 0.05f;
    
    [SerializeField] public float JumpHeight = 30;

    [SerializeField] public bool CoyoteUsable;
    [SerializeField] public float CoyoteTimeThreshold = 0.1f;
    
    [SerializeField] public float JumpBuffer = 0.1f;
    
    [SerializeField] public bool EndedJumpEarly = true;
    [SerializeField] public float EndedJumpEarlyGravityModifier = 3;
    
    [SerializeField] public float ApexPoint;
    [SerializeField] public float JumpApexSpeedBonus = 2;
    [SerializeField] public float JumpApexThreshold = 10f;

    [Header("Dashing")] 
    [SerializeField] public bool DashAbilityActive;
    [SerializeField] public float DashingAcceleration = 1.5f;
    [SerializeField] public float DashingTime = 0.1f;
    [SerializeField] public int MaximumDashCount = 1;
    [SerializeField] public float DashCooldownTime = 2f;

    [Header("Weapons")]
    
    [SerializeField] public bool CanFireWeapon = true;

    [Header("Wall Jumping")]
    
    [SerializeField] public bool WallJumpAbilityActive;

    [SerializeField] public int ResetNumberOfJumpOnWallGrab;

    [SerializeField] public bool CurrentlyOnStickyWall;
    
    [SerializeField] public bool CurrentlyWallJumping;
    
    [SerializeField] public float WallJumpingSpeed;

    [SerializeField] public LayerMask WallLayerMask;

    [SerializeField] public AnimationCurve CurveSpeedModifier;
    [SerializeField][Range(0,1)] public float MaxCurvaturePercent = 0.45f;
    [SerializeField][Range(0,1)] public float MinCurvaturePercent = 0.05f;
    [SerializeField][Range(0,90)] public float WallJumpCurrentAngle;

    [SerializeField] public float DelayOfWallJump = 0.2f;
    [SerializeField] public float EndWallJumpYVelocity = -5f;
    [SerializeField] public float EndWallJumpXVelocity = 13f;
    [SerializeField] public float TimeBeforeSlippingStart;
    [SerializeField] public float SlippingVelocity;
    [SerializeField] public float EndWallSlipYVelocity;
    [SerializeField] public float EndWallSlipXVelocity;

    [Header("Grappling")] 
    
    [SerializeField] public bool GrapplingAbilityActive;
    
    [SerializeField]public LayerMask GrappleTargetableLayer;

    [SerializeField]public AnimationCurve RopeAnimationCurve;

    [SerializeField][Range(0.01f,4f)]public float StartWaveSize;

    [SerializeField]public AnimationCurve RopeProgressionCurve;
    
    [SerializeField][Range(1,50)]public float RopeProgressionSpeed;

    [SerializeField]public int RopePrecision;

    [SerializeField]public float StraightenLineSpeed;

    [SerializeField]public float PullingSpped;

    [SerializeField]public float EndGrappleXVelocity;
    [SerializeField]public float EndGrappleYVelocity;
}
