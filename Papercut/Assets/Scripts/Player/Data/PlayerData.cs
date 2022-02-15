using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "newPlayerData", menuName = "Data/Player/PlayerData")]
public class PlayerData : ScriptableObject
{
    [FormerlySerializedAs("Description")] [TextArea]
    public string description;

    [Header("Physics Related : Walking")] [SerializeField]
    public float WalkingSpeed = 6f;

    [SerializeField] public float RunningSpeed = 8f;
    [SerializeField] public float CurrentSpeed = 4;
    [SerializeField] public float RawInputValue;
    [SerializeField] public int FacingDirection;
    [SerializeField] public LayerMask GroundLayerMask;
    [SerializeField] public float _groundCheckRadius = 0.1f;

    [Header("Physics Related : Jumping")] [SerializeField]
    public float JumpingSpeed = 1f;

    [SerializeField] public float Gravity = -29.4f;
    [SerializeField] public float JumpForce = 15f;
    [SerializeField] public float AirSensibility = 0.5f;
    [SerializeField] public float JumpingForceShrink = 20f;
    [SerializeField] public float JumpingSpeedLowThreshold = 1f;
    [SerializeField] public float JumpingSpeedMaxThreshold = 1.5f;
    [SerializeField] public float MinimumJumpHeightTime = 0.15f;
    [SerializeField] public float MaximumJumpHeightTime = 0.3f;
    [SerializeField] public float JumpCoyoteTime = 0.2f;
    [SerializeField] public float JumpBufferTime = 0.2f;
    [SerializeField] public float _ceilingCheckRadius = 0.2f;

    [Header("Physics Related : Others")] [SerializeField]
    public float AntiBumpSlopeRatio = 6.5f;

    [SerializeField] public float SlopeLimit = 45f;
    [SerializeField] public float SlopeSlideSpeed = 2f;
    [SerializeField] public float DashingAcceleration = 1.5f;
    [SerializeField] public float _wallCheckDistance;
    [SerializeField] public float DashingTime = 0.1f;
    [SerializeField] public int MaximumDashCount = 1;
    [SerializeField] public float DashCooldownTime = 2f;

    [Header("Character Leaning")]
    [SerializeField] public Vector3 LeanRight = new Vector3(0f, 0f, 5f);
    [SerializeField] public Vector3 LeanLeft = new Vector3(0f, 0f, 355f);
    

    
    [SerializeField] public float _fallClamp = -40f;
    [SerializeField] public float _minFallSpeed = 80f;
    [SerializeField] public float _maxFallSpeed = 120f;
    public float _fallSpeed;
    
    [SerializeField] public float _jumpHeight = 30;
    [SerializeField] public float _jumpApexThreshold = 10f;
    [SerializeField] public float _coyoteTimeThreshold = 0.1f;
    [SerializeField] public float _jumpBuffer = 0.1f;
    [SerializeField] public float _jumpEndEarlyGravityModifier = 3;
    public bool _coyoteUsable;
    public bool _endedJumpEarly = true;
    //public float _apexPoint; 
    public float _lastJumpPressed;
    
    public float _currentVerticalSpeed;
    
    public float _timeLeftGrounded;

    public bool LandingThisFrame;

    public bool CollisionDown;


}
