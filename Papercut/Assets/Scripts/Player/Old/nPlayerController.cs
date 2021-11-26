using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.ProBuilder.MeshOperations;

public class nPlayerController : MonoBehaviour
{
    [Header("Physics Related : Walking")] 
    [SerializeField] [HideInInspector] private Vector2 _moveDirection;
    [SerializeField] [HideInInspector] private RaycastHit2D _slopeHit;
    public AnimationCurve walkingAccelerationCurve;
    [SerializeField][HideInInspector] private float walkingAccelerationTimer;
    
    [Header("Physics Related : Jumping")]
    //[SerializeField][HideInInspector] private float ExtraDistanceValue = 0.34f;
    [SerializeField][HideInInspector] private float ExtraDistanceValue = 0.40f;
    [SerializeField][HideInInspector] private float _lv;
    [SerializeField][HideInInspector] private float _rv;
    [SerializeField][HideInInspector] private float _jumpTimer;
    [SerializeField][HideInInspector][Range(0f,50f)] private float JumpAndFallVelocity;
    [SerializeField][HideInInspector] private float _jumpCoyoteTimeCounter;
    [SerializeField][HideInInspector] private float _jumpBufferCounter;
    [SerializeField][HideInInspector] private bool _currentlyJumping;
    
    [Header("Physics Related : Others")]
    [SerializeField][HideInInspector] private float slideSpeed;
    [SerializeField][HideInInspector] private bool _currentlyDashing;
    [SerializeField][HideInInspector] private float _dashTimer;
    [SerializeField][HideInInspector] private float _lastClickTimeRightDash;
    [SerializeField][HideInInspector] private float _lastClickTimeLeftDash;
    [SerializeField][HideInInspector] private float _doubleClickTimer = 0.25f;
    [SerializeField][HideInInspector] private int lastInputRightValue;
    [SerializeField][HideInInspector] private int lastInputLeftValue;
    [SerializeField] private LayerMask SlopeLayerMask;
    
    [Header("Character Leaning")]
    [SerializeField][HideInInspector]private Vector3 Center = Vector3.zero;

    [Header("Interaction Related")]
    [SerializeField] private LayerMask InteractionLayerMask;
    [SerializeField] private TMPro.TextMeshProUGUI InteractionText;
    [SerializeField] private float _clickInteractionDistance;
    [SerializeField] private float _holdInteractionDistance;

    [Header("Components")]
    [SerializeField] private Collider2D _collider2D;
    [SerializeField] private Rigidbody2D _rigidbody2D;
    [SerializeField] private Transform _leanTransform;
    [SerializeField] private Transform _rotateTransform;
    [SerializeField] private PlayerInputState _playerInputState;
    [SerializeField] private Animator _childAnimator;
    [SerializeField] private PlayerData _playerData;
    
    [Header("Collisions")]
    [SerializeField] private Transform _groundCheck;
    [SerializeField] private Transform _rightWallCheck;
    [SerializeField] private Transform _leftWallCheck;
    [SerializeField] private Transform _rightLedgeCheck;
    [SerializeField] private Transform _leftLedgeCheck;
    [SerializeField] private Transform _ceilingCheck;
    
    private void Awake()
    {
        _playerInputState = GetComponent<PlayerInputState>();
        _rigidbody2D = GetComponent<Rigidbody2D>();
        _collider2D = GetComponent<Collider2D>();
        _leanTransform = transform.GetChild(0).GetComponent<Transform>();
        _rotateTransform = transform.GetChild(0).transform.GetChild(0).GetComponent<Transform>();
        _childAnimator = transform.GetChild(0).GetComponent<Animator>();
        _playerData.FacingDirection = 1;
    }

    private void Update()
    {
        Debug.Log(_moveDirection.y);
        SetRigidbodyVelocityLimit();
        CheckIfCanJump();
        HandleRawInputValue();
        HandleJump();
        WalkingCurveAcceleratorSetter();
        if (OnSteepSlope())
        {
            SteepSlopeMovement();
        }
        
    }

    private void FixedUpdate()
    {
        RunCheck();
        HandleMovement();
        HandleFall();
        DecreaseJumpSpeed();
    }

    private void SetRigidbodyVelocityLimit()
    {
        if(_rigidbody2D.velocity.sqrMagnitude > 100f)
        {
            _rigidbody2D.velocity *= 0.99f;
        }
    }

    private void RunCheck()
    {
        if (lastInputRightValue == 2)
        {
            if (_playerInputState.ListenRightInput() == 1 && !_currentlyDashing)
            {
                var timeSinceLastClickRightDash = Time.time - _lastClickTimeRightDash;
                if(timeSinceLastClickRightDash <= _doubleClickTimer) StartCoroutine(Dashing());
                _lastClickTimeRightDash = Time.time;
                _lastClickTimeLeftDash = 0.3f;
            }
        }

        if (lastInputLeftValue == 2)
        {
            if (_playerInputState.ListenLeftInput() == 1 && !_currentlyDashing)
            {
                var timeSinceLastClickLeftDash = Time.time - _lastClickTimeLeftDash;
                if(timeSinceLastClickLeftDash <= _doubleClickTimer) StartCoroutine(Dashing());
                _lastClickTimeLeftDash = Time.time;
                _lastClickTimeRightDash = 0.3f;
            }
        }
        

        switch (_currentlyDashing)
        {
            case false when _playerInputState.ListenRunInput() == 2:
                _playerData.CurrentSpeed = _playerData.RunningSpeed;
                break;
            case false:
                _playerData.CurrentSpeed = _playerData.WalkingSpeed;
                break;
        }

        if (_playerInputState.ListenRightInput() != 0 || _playerInputState.ListenLeftInput() != 0)
        {
            lastInputRightValue = _playerInputState.ListenRightInput();
            lastInputLeftValue = _playerInputState.ListenLeftInput();
        }
    }

    private IEnumerator Dashing()
    {
        float dashAccel;
        dashAccel = _playerData.DashingAcceleration;
        _currentlyDashing = true;
        while (_dashTimer <= 1.5f)
        {
            _playerData.CurrentSpeed = _playerData.RunningSpeed + dashAccel;
            _dashTimer += Time.fixedDeltaTime;
            if (dashAccel >= 0) dashAccel -= Time.fixedDeltaTime * (_playerData.DashingAcceleration / 1.5f);
            
            yield return null;
        }
        _dashTimer = 0f;
        _currentlyDashing = false;
    } 


    private void WalkingCurveAcceleratorSetter()
    {
        if (_playerInputState.ListenRightInput() == 1 || _playerInputState.ListenLeftInput() == 1 ) walkingAccelerationTimer = 0f;
        else if (_playerInputState.ListenRightInput() == 2 || _playerInputState.ListenLeftInput() == 2) walkingAccelerationTimer += Time.fixedDeltaTime;
    }

    private void CheckFlip(int inputValue)
    {
        if (inputValue == 0 || inputValue == _playerData.FacingDirection) return;
        _playerData.FacingDirection *= -1;
        _rotateTransform.Rotate(0.0f, 180.0f, 0.0f);
    }

    private void HandleRawInputValue() =>  _playerData.RawInputValue = Mathf.Clamp(-_playerInputState.ListenLeftInput() + _playerInputState.ListenRightInput(),-1f,1f);
    
    private float HandleRightAirMovement()
    {
        if (_playerData.RawInputValue != 1) return _rv = ReduceAirMovement(_rv);
        _lv = ReduceAirMovement(_lv);
        return _rv = Mathf.Clamp01(_rv * 1.33f + _playerData.AirSensibility * Time.fixedDeltaTime);
    }

    private float HandleLeftAirMovement()
    {
        if (_playerData.RawInputValue != -1) return -(_lv = ReduceAirMovement(_lv));
        _rv = ReduceAirMovement(_rv);
        return -(_lv = Mathf.Clamp01(_lv * 1.33f + _playerData.AirSensibility * Time.fixedDeltaTime));
    }
    private float ReduceAirMovement(float value) => Mathf.Clamp01(Mathf.Abs(value) - _playerData.AirSensibility * Time.fixedDeltaTime) * Mathf.Sign(value);

    private void HandleMovement()
    {
        switch (_playerData.RawInputValue)
        {
            case -1f:
                HandleLean(true, _playerData.LeanLeft);
                break;
            case 1f:
                HandleLean(false, _playerData.LeanRight);
                break;
            case 0f:
                ResetLeanRotation();
                break;
        }
        

        CheckFlip((int)_playerData.RawInputValue);
        _rigidbody2D.velocity = GroundCollision ? new Vector2(_playerData.RawInputValue * _playerData.CurrentSpeed * walkingAccelerationCurve.Evaluate(walkingAccelerationTimer), _moveDirection.y + JumpAndFallVelocity) : new Vector2((HandleRightAirMovement() + HandleLeftAirMovement()) * _playerData.CurrentSpeed * _playerData.JumpingSpeed, JumpAndFallVelocity);
    }
    
    private void HandleLean(bool flipX, Vector3 lean)
    {
        ResetLeanRotation();
        if (Vector3.Distance(_leanTransform.eulerAngles, lean) > 0.01f)
            _leanTransform.rotation = Quaternion.Euler(Vector3.Lerp(_leanTransform.rotation.eulerAngles, -lean, 4f));
    }

    private void ResetLeanRotation() => _leanTransform.eulerAngles = Center;

    private void CheckIfCanJump()
    {
        if (_playerInputState.ListenJumpInput() == 1) _jumpBufferCounter = _playerData.JumpBufferTime;
        else _jumpBufferCounter -= Time.fixedDeltaTime;
    }
    
    private void HandleJump()
    {
        if (!(_jumpBufferCounter > 0f)) return;
        if (!JumpCoyoteTime()) return;
        if (_currentlyJumping) return;
        CurrentlyJumping = StartCoroutine(HandleJumping());
    }

    private Coroutine CurrentlyJumping { get; set; }

    private IEnumerator HandleJumping()
    {
        _currentlyJumping = true;
        _playerData.JumpingSpeed = _playerData.JumpingSpeedMaxThreshold;
        while (_jumpTimer <= _playerData.MinimumJumpHeightTime && (_playerInputState.ListenJumpInput() == 2 || _playerInputState.ListenJumpInput() == 1) || _jumpTimer >= _playerData.MaximumJumpHeightTime)
        {
            yield return new WaitForFixedUpdate();
            _jumpTimer += Time.fixedDeltaTime;
            JumpAndFallVelocity += ((_playerData.CurrentSpeed * _playerData.JumpForce) / _playerData.JumpingForceShrink); //* jumpingAccelerationCurve.Evaluate(jumpingAccelerationTimer); 
            Debug.Log("Jumping");
        }

        _jumpCoyoteTimeCounter = 0f;
        _jumpTimer = 0;
        _currentlyJumping = false;
    }
    
    private void HandleFall()
    {
        if (CheckCeilingCollision())
        {
            ResetJumpVariablesAndCr();
        }
        if (!GroundCollision)
            JumpAndFallVelocity += (_playerData.Gravity * _playerData.WalkingSpeed/2f) * Time.deltaTime;
        else if (GroundCollision)
        {
            if (JumpAndFallVelocity <= 0f)
            {
                ResetJumpVariablesAndCr();
                _moveDirection.y = -_playerData.AntiBumpSlopeRatio;
            }
        }
    }

    private void ResetJumpVariablesAndCr()
    {
        JumpAndFallVelocity = 0f;
        if (_currentlyJumping) return;
        _lv = 0.25f;
        _rv = 0.25f;
    }
    
    private void DecreaseJumpSpeed()
    {
        if (_playerData.JumpingSpeed > _playerData.JumpingSpeedLowThreshold) _playerData.JumpingSpeed -= Time.fixedDeltaTime * 0.5f;
        else _playerData.JumpingSpeed = _playerData.JumpingSpeedLowThreshold;
    }

    private bool OnSteepSlope()
    {
        if (!GroundCollision) return false;
        
        _slopeHit = CollisionCheck(0f, Vector2.down, 1f);

        if (_slopeHit)
        {
            var slopeAngle = Vector2.Angle(_slopeHit.normal, Vector2.up);
            if (slopeAngle > _playerData.SlopeLimit) return true;
            slideSpeed = 0f;
        }
        return false;
        
    }

    private void SteepSlopeMovement()
    {
        Vector2 slopeDirection = Vector2.up - _slopeHit.normal * Vector2.Dot(Vector2.up, _slopeHit.normal);
        slideSpeed += (_playerData.CurrentSpeed + _playerData.SlopeSlideSpeed) * Time.fixedDeltaTime;
        
        _moveDirection = slopeDirection * -slideSpeed;
        _moveDirection.y = _moveDirection.y - _slopeHit.point.y;
    }

    private bool JumpCoyoteTime()
    {
        if (GroundCollision) _jumpCoyoteTimeCounter = _playerData.JumpCoyoteTime;
        else _jumpCoyoteTimeCounter -= Time.fixedDeltaTime;
        return _jumpCoyoteTimeCounter > 0;
    }
    
    //private bool CheckGroundCollision() => CollisionCheck(0f, Vector2.down, ExtraDistanceValue).collider != null;
    private bool CheckCeilingCollision() => CollisionCheck(0f, Vector2.up, ExtraDistanceValue).collider != null;
    private RaycastHit2D CollisionCheck(float angle, Vector2 direction, float extraDistance)
    {
        RaycastHit2D hit = Physics2D.BoxCast(
            _collider2D.bounds.center, 
            _collider2D.bounds.size / 1.5f, 
            angle, 
            direction,
            extraDistance,
            _playerData.GroundLayerMask
        );
        return hit;
    }


    private Collider2D CheckOverlap(Transform transform) => Physics2D.OverlapCircle(transform.position, _playerData._groundCheckRadius, _playerData.GroundLayerMask);

    private RaycastHit2D CheckRaycast(Transform transform, float facingDirection) => Physics2D.Raycast(transform.position, Vector2.right * facingDirection, _playerData._wallCheckDistance, _playerData.GroundLayerMask);
    
    private bool CeilingCollision => CheckOverlap(_ceilingCheck);
    private bool GroundCollision => CheckOverlap(_groundCheck);

    private bool WallRightCollision => CheckRaycast(_rightWallCheck, _playerData.FacingDirection);
    private bool WallLeftCollision => CheckRaycast(_leftWallCheck, -_playerData.FacingDirection);
    private bool LedgeRightCollision => CheckRaycast(_rightLedgeCheck, _playerData.FacingDirection);
    private bool LedgeLeftCollision => CheckRaycast(_leftLedgeCheck, -_playerData.FacingDirection);

}
