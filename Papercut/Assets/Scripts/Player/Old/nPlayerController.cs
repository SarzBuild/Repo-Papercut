using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PlayerLoop;
using UnityEngine.ProBuilder.MeshOperations;

enum PlayState
{
    IDLE,
    WALK,
    RUN,
    DASH,
    JUMP,
    MIDAIR,
    HARDLAND,
    SOFTLAND,
    ROLL,
    WALLGRAB
}


public class nPlayerController : MonoBehaviour
{
    private PlayState _playerState;





    [Header("Physics Related : Walking")] [SerializeField] [HideInInspector]
    private Vector2 _moveDirection;

    [SerializeField] [HideInInspector] private RaycastHit2D _slopeHit;
    public AnimationCurve walkingAccelerationCurve;
    [SerializeField] [HideInInspector] private float walkingAccelerationTimer;

    [Header("Physics Related : Jumping")]
    //[SerializeField][HideInInspector] private float ExtraDistanceValue = 0.34f;
    [SerializeField]
    [HideInInspector]
    private float ExtraDistanceValue = 0.40f;

    [SerializeField] [HideInInspector] private float _lv;
    [SerializeField] [HideInInspector] private float _rv;
    [SerializeField] [HideInInspector] private float _jumpTimer;

    [SerializeField] [HideInInspector] [Range(0f, 50f)]
    private float JumpAndFallVelocity;

    [SerializeField] [HideInInspector] private float _jumpCoyoteTimeCounter;
    [SerializeField] [HideInInspector] private float _jumpBufferCounter;
    [SerializeField] [HideInInspector] private bool _currentlyJumping;
    public AnimationCurve jumpingAccelerationCurve;
    [SerializeField] [HideInInspector] private float jumpingAccelerationTimer;

    [Header("Physics Related : Others")] [SerializeField] [HideInInspector]
    private float slideSpeed;

    [SerializeField] [HideInInspector] private bool _currentlyDashing;
    [SerializeField] [HideInInspector] private float _dashTimer = 5f;
    [SerializeField] [HideInInspector] private float _lastClickTimeRightDash;
    [SerializeField] [HideInInspector] private float _lastClickTimeLeftDash;
    [SerializeField] [HideInInspector] private float _doubleClickTimer = 0.25f;
    [SerializeField] [HideInInspector] private int lastInputRightValue;
    [SerializeField] [HideInInspector] private int lastInputLeftValue;

    [Header("Character Leaning")] [SerializeField] [HideInInspector]
    private Vector3 Center = Vector3.zero;

    [Header("Interaction Related")] [SerializeField]
    private LayerMask InteractionLayerMask;

    [SerializeField] private TMPro.TextMeshProUGUI InteractionText;
    [SerializeField] private float _clickInteractionDistance;
    [SerializeField] private float _holdInteractionDistance;

    [Header("Components")] [SerializeField]
    private Collider2D _collider2D;

    [SerializeField] private Rigidbody2D _rigidbody2D;
    [SerializeField] private Transform _leanTransform;
    [SerializeField] private Transform _rotateTransform;
    [SerializeField] private PlayerInputState _playerInputState;
    [SerializeField] private Animator _childAnimator;
    [SerializeField] private PlayerData _playerData;

    [Header("Collisions")] [SerializeField]
    private Transform _groundCheck;

    [SerializeField] private Transform _rightWallCheck;
    [SerializeField] private Transform _leftWallCheck;
    [SerializeField] private Transform _rightLedgeCheck;
    [SerializeField] private Transform _leftLedgeCheck;
    [SerializeField] private Transform _ceilingCheck;
    private Vector2 _tempDashDirection;
    private int _dashCount;
    private bool _resetDashCountRoutine;



    private void GetComponents()
    {
        _playerInputState = GetComponent<PlayerInputState>();
        _rigidbody2D = GetComponent<Rigidbody2D>();
        _collider2D = GetComponent<Collider2D>();
        _leanTransform = transform.GetChild(0).GetComponent<Transform>();
        _rotateTransform = transform.GetChild(0).transform.GetChild(0).GetComponent<Transform>();
        _childAnimator = transform.GetChild(0).GetComponent<Animator>();
    }

    private void SetInitialValues()
    {
        _playerData.FacingDirection = 1;
        _dashCount = 1;
    }

    private void Awake()
    {
        GetComponents();
        SetInitialValues();
    }

    private void Update()
    {
        SetRigidbodyVelocityLimit();
        JumpBuffering();
        HandleRawInputValue();
        OnPossibleJump();
        WalkingCurveAcceleratorSetter();
        JumpingCurveAcceleratorSetter();
        HandleDash();
        DashTimer();
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
        DashMovement();
    }

    #region Rigidbody Max Limit

    private void SetRigidbodyVelocityLimit()
    {
        if (_rigidbody2D.velocity.sqrMagnitude > 100f)
        {
            _rigidbody2D.velocity *= 0.99f;
        }
    }


    #endregion

    #region Dash & Run

    private void RunCheck()
    {
        /*if (lastInputRightValue == 2)
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
        }*/


        /*switch (_currentlyDashing)
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
        }*/
    }

    private void HandleDash()
    {
        if (_playerInputState.ListenRunInput() != 2) return;
        if (_dashCount < 1) return;
        if (_currentlyDashing) return;
        _tempDashDirection = new Vector2(_playerData.RawInputValue * _playerData.DashingAcceleration, 0.2f);
        StartCoroutine(Dash());
    }

    private void DashMovement()
    {
        if (!_currentlyDashing) return;
        _rigidbody2D.velocity = _tempDashDirection;
    }

    private IEnumerator Dash()
    {
        _currentlyDashing = true;
        _dashCount = 0;
        yield return new WaitForSeconds(0.1f);
        JumpAndFallVelocity = 0f;
        _currentlyDashing = false;
    }

    private void DashTimer()
    {
        if (_dashCount > 0) return;
        if (_resetDashCountRoutine == false)
        {
            StartCoroutine(ResetDashCount());
        }
    }

    private IEnumerator ResetDashCount()
    {
        _resetDashCountRoutine = true;
        yield return new WaitUntil(() => _currentlyDashing == false);
        yield return new WaitForSeconds(2f);
        _dashCount = 1;
        _resetDashCountRoutine = false;
    }



    /*private IEnumerator Dashing()
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
    } */

    #endregion

    #region Movement

    private void WalkingCurveAcceleratorSetter()
    {
        if (_playerInputState.ListenRightInput() == 1 || _playerInputState.ListenLeftInput() == 1)
            walkingAccelerationTimer = 0f;
        else if (_playerInputState.ListenRightInput() == 2 || _playerInputState.ListenLeftInput() == 2)
            walkingAccelerationTimer += Time.fixedDeltaTime;
    }

    private void HandleRawInputValue() => _playerData.RawInputValue =
        Mathf.Clamp(-_playerInputState.ListenLeftInput() + _playerInputState.ListenRightInput(), -1f, 1f);

    private void HandleMovement()
    {
        
        _rigidbody2D.velocity = GroundCollision ? new Vector2(_playerData.RawInputValue * _playerData.CurrentSpeed * walkingAccelerationCurve.Evaluate(walkingAccelerationTimer), _moveDirection.y + JumpAndFallVelocity) : new Vector2((AirRightMovement() + AirLeftMovement()) * _playerData.CurrentSpeed * _playerData.JumpingSpeed, JumpAndFallVelocity);
    }

    #endregion

    //#region Visual Bonuses
    
    /*private void CheckFlip(int inputValue)
    {
        if (_playerData.RawInputValue != 0)
        {
            var _currentHorizontalSpeed;
            var _acceleration;
            _currentHorizontalSpeed += _playerData.RawInputValue * _playerData.CurrentSpeed * Time
            
        }
    }*/

    private void CalculateGravity()
    {
        
    }
    











































    #region Jumping
    
    private float AirRightMovement()
    {
        if (_playerData.RawInputValue != 1) return _rv = ReduceAirMovement(_rv);
        _lv = ReduceAirMovement(_lv);
        return _rv = Mathf.Clamp01(_rv * 1.33f + _playerData.AirSensibility * Time.fixedDeltaTime);
    }

    private float AirLeftMovement()
    {
        if (_playerData.RawInputValue != -1) return -(_lv = ReduceAirMovement(_lv));
        _rv = ReduceAirMovement(_rv);
        return -(_lv = Mathf.Clamp01(_lv * 1.33f + _playerData.AirSensibility * Time.fixedDeltaTime));
    }
    private float ReduceAirMovement(float value) => Mathf.Clamp01(Mathf.Abs(value) - _playerData.AirSensibility * Time.fixedDeltaTime) * Mathf.Sign(value);
    
    private void JumpingCurveAcceleratorSetter()
    {
        if (_playerInputState.ListenJumpInput() == 1) jumpingAccelerationTimer = 0f;
        else if (_playerInputState.ListenJumpInput() == 2) jumpingAccelerationTimer += Time.fixedDeltaTime;
    }
    
    private bool JumpCoyoteTime()
    {
        if (GroundCollision) _jumpCoyoteTimeCounter = _playerData.JumpCoyoteTime;
        else _jumpCoyoteTimeCounter -= Time.fixedDeltaTime;
        return _jumpCoyoteTimeCounter > 0;
    }

    private void JumpBuffering()
    {
        if (_playerInputState.ListenJumpInput() == 1) _jumpBufferCounter = _playerData.JumpBufferTime;
        else _jumpBufferCounter -= Time.fixedDeltaTime;
    }
    
    private void OnPossibleJump()
    {
        if (!(_jumpBufferCounter > 0f)) return;
        if (!JumpCoyoteTime()) return;
        if (_currentlyJumping) return;
        CurrentlyJumping = StartCoroutine(JumpCoroutine());
    }

    private Coroutine CurrentlyJumping { get; set; }

    private IEnumerator JumpCoroutine()
    {
        /*var jumpInputStartTime = Time.time;
        //https://youtu.be/dOiOp3DLxZQ?t=2609
        //TODO ADD DIFFERENT JUMP VALUE WITH TRACKING HOW MUCH TIME THE INPUT HAS BEEN PRESSED INSTEAD OF RELYING ON THE INPUT ITSELF
        if(Time.time >= jumpInputStartTime + 0.2f)*/
        
        
        JumpAndFallVelocity = 0f;
        _currentlyJumping = true;
        _playerData.JumpingSpeed = _playerData.JumpingSpeedMaxThreshold;
        while (_jumpTimer <= _playerData.MinimumJumpHeightTime && (_playerInputState.ListenJumpInput() == 2 || _playerInputState.ListenJumpInput() == 1) || _jumpTimer >= _playerData.MaximumJumpHeightTime)
        {
            yield return new WaitForFixedUpdate();
            _jumpTimer += Time.fixedDeltaTime;
            JumpAndFallVelocity += _playerData.JumpForce * jumpingAccelerationCurve.Evaluate(jumpingAccelerationTimer);
            Debug.Log("Jumping");
        }

        _jumpCoyoteTimeCounter = 0f;
        _jumpTimer = 0;
        _currentlyJumping = false;
    }
    #endregion

    #region InAir
    private void HandleFall()
    {
        if (CeilingCollision) ResetJumpVariables(); //RESET
        switch (GroundCollision)
        {
            case false:
                JumpAndFallVelocity += (_playerData.Gravity * _playerData.WalkingSpeed/2f) * Time.deltaTime; //FALL ACCELERATION
                break;
            case true when JumpAndFallVelocity <= 0f:
                ResetJumpVariables();
                _moveDirection.y = -_playerData.AntiBumpSlopeRatio;
                //LANDED
                break;
            default:
            {
                if (JumpAndFallVelocity <= 0.01f)
                {
                    _currentlyJumping = false;
                    //FALLING
                }

                break;
            }
        }
    }

    private void ResetJumpVariables()
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
    #endregion

    #region Slopes
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
        slideSpeed += _playerData.SlopeSlideSpeed * Time.fixedDeltaTime;
        
        _moveDirection = slopeDirection * -slideSpeed;
        _moveDirection.y = _moveDirection.y - _slopeHit.point.y;
    }
    #endregion

    #region Checks
    
    private RaycastHit2D CollisionCheck(float angle, Vector2 direction, float extraDistance) => Physics2D.BoxCast(_collider2D.bounds.center, _collider2D.bounds.size / 1.5f, angle, direction, extraDistance, _playerData.GroundLayerMask);
    private Collider2D CheckOverlap(Transform transform, float radius) => Physics2D.OverlapCircle(transform.position, radius, _playerData.GroundLayerMask);
    private RaycastHit2D CheckRaycast(Transform transform, float facingDirection) => Physics2D.Raycast(transform.position, Vector2.right * facingDirection, _playerData._wallCheckDistance, _playerData.GroundLayerMask);
    
    private bool CeilingCollision => CheckOverlap(_ceilingCheck, _playerData._ceilingCheckRadius);
    private bool GroundCollision => CheckOverlap(_groundCheck, _playerData._groundCheckRadius);

    private bool WallRightCollision => CheckRaycast(_rightWallCheck, _playerData.FacingDirection);
    private bool WallLeftCollision => CheckRaycast(_leftWallCheck, -_playerData.FacingDirection);
    private bool LedgeRightCollision => CheckRaycast(_rightLedgeCheck, _playerData.FacingDirection);
    private bool LedgeLeftCollision => CheckRaycast(_leftLedgeCheck, -_playerData.FacingDirection);
    
    #endregion
    
    
    
    
    
    
    /*private void CheckForInteractionObject()
    {
        var successfulHit = false;
        if (!(0 > Input.mousePosition.x || 0 > Input.mousePosition.y || Screen.width < Input.mousePosition.x ||
              Screen.height < Input.mousePosition.y))
        {
            Vector2 ray = _playerControls.GetMousePos();
            RaycastHit2D hit = Physics2D.Raycast(ray, Vector2.zero, Mathf.Infinity, InteractionLayerMask);
            if (hit)
            {
                Interactable interactable = hit.collider.GetComponent<Interactable>();
                if (interactable != null && (Interactable.InteractionType.CLICK == interactable.interactionType))
                {
                    HandleInteraction(interactable);
                    InteractionText.text = interactable.GetDescription();
                    var offset = new Vector2(0f, 1f);
                    if ((Vector2)InteractionText.transform.position != (ray + offset))
                    {
                        InteractionText.transform.position = (ray + offset);
                    }

                    successfulHit = true;
                }
            }
        }
        if (!successfulHit)
            InteractionText.text = "";
    }

    private void HandleInteraction(Interactable interactable)
    {
        switch (interactable.interactionType)
        {
            case Interactable.InteractionType.E:
                if (true) //OVERLAP CIRCLE RAYCAST NEAR PLAYER TO CHECK IF POSSIBILITY TO INTERACT WITH STUFF
                {
                    //IF TRUE WE SHOW THEM THAT THEY CAN INTERACT WITH IT 
                    if (_playerControls.GetInteraction())
                    {
                        interactable.Interact();
                    }
                        //IF SO THEY CALL INTERACT
                }
                break;
            case Interactable.InteractionType.CLICK:
                if (_playerControls.GetLeftClick())
                {
                    interactable.Interact();
                }
                break;
        }
    }*/

    

}
