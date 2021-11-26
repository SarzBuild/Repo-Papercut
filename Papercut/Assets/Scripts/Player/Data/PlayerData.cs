using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "newPlayerData", menuName = "Data/Player/PlayerData")]
public class PlayerData : ScriptableObject
{
    [FormerlySerializedAs("Description")] [TextArea]public string description;

    [Header("Physics Related : Walking")] 
    [SerializeField] public float WalkingSpeed = 6f;
    [SerializeField] public float RunningSpeed = 8f;
    [SerializeField] public float DashingAcceleration = 1.5f;
    [SerializeField] public float CurrentSpeed = 4;
    [SerializeField] public float RawInputValue;
    [SerializeField] public int FacingDirection;
    [SerializeField] public float AntiBumpSlopeRatio;
    [SerializeField] public float SlopeLimit;
    [SerializeField] public float SlopeSlideSpeed;

    [Header("Physics Related : Jumping")]
    [SerializeField] public float JumpingSpeed = 1f;
    [SerializeField] public float Gravity = -9.8f;
    [SerializeField] public float JumpForce = 15f;
    [SerializeField] public LayerMask GroundLayerMask;
    [SerializeField] public float AirSensibility;
    [SerializeField] public float JumpingForceShrink = 0.02f;
    [SerializeField] public float JumpingSpeedLowThreshold = 1f;
    [SerializeField] public float JumpingSpeedMaxThreshold = 1.5f;
    [SerializeField] public float MinimumJumpHeightTime = 0.15f;
    [SerializeField] public float MaximumJumpHeightTime = 0.3f;

    [Header("Character Leaning")]
    [SerializeField] public Vector3 LeanRight = new Vector3(0f, 0f, 5f);
    [SerializeField] public Vector3 LeanLeft = new Vector3(0f, 0f, 355f);
    

}
