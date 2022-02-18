using System;
using System.Collections;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;





/*public class PlayerTest : MonoBehaviour
{
    public struct RayRange 
    {
        public RayRange(float startX, float startY, float endX, float endY, Vector2 direction) {
            Start = new Vector2(startX, startY);
            End = new Vector2(endX, endY);
            Direction = direction;
        }
        public readonly Vector2 Start, End, Direction;
    }
    
    
    
    //Dashing
    //Movement
    //Jumping 
    //Gravity
    //Wall Grab
    //Hook
    //Interaction
    //ApplyPhysics
    //Slopes
    
    [Header("Components")] [SerializeField]
    private Collider2D _collider2D;

    [SerializeField] private Rigidbody2D _rigidbody2D;
    [SerializeField] private Transform _leanTransform;
    [SerializeField] private Transform _rotateTransform;
    [SerializeField] private PlayerInputState _playerInputState;
    [SerializeField] private Animator _childAnimator;
    [SerializeField] private PlayerData _playerData;
    
    
    
    
    [Header("COLLISION")] 
    [SerializeField] private Bounds _characterBounds;
    [SerializeField] private LayerMask _groundLayer;
    [SerializeField] private int _detectorCount = 3;
    [SerializeField] private float _detectionRayLength = 0.1f;
    [SerializeField] [Range(0.1f, 0.3f)] private float _rayBuffer = 0.1f;

    private RayRange _raysUp, _raysRight, _raysDown, _raysLeft;
    
    
    
    
    [Header("WALKING")] [SerializeField] private float _acceleration = 90;
    [SerializeField] private float _moveClamp = 13;
    [SerializeField] private float _deAcceleration = 60f;
    [SerializeField] private float _apexBonus = 2;
    
    
    
    [Header("GRAVITY")] 
    [SerializeField] private float _fallClamp = -40f;
    [SerializeField] private float _minFallSpeed = 80f;
    [SerializeField] private float _maxFallSpeed = 120f;
    private float _fallSpeed;
    
    
    
    [Header("JUMPING")] 
    [SerializeField] private float _jumpHeight = 30;
    [SerializeField] private float _jumpApexThreshold = 10f;
    [SerializeField] private float _coyoteTimeThreshold = 0.1f;
    [SerializeField] private float _jumpBuffer = 0.1f;
    [SerializeField] private float _jumpEndEarlyGravityModifier = 3;
    private bool _coyoteUsable;
    private bool _endedJumpEarly = true;
    private float _apexPoint; 
    private float _lastJumpPressed;
    private bool CanUseCoyote => _coyoteUsable && !_collisionDown && _timeLeftGrounded + _coyoteTimeThreshold > Time.time;
    private bool HasBufferedJump => _collisionDown && _lastJumpPressed + _jumpBuffer > Time.time;
    
    
    
    
    public Vector3 Velocity { get; private set; }
    public bool JumpingThisFrame { get; private set; }
    public bool LandingThisFrame { get; private set; }
    public Vector3 RawMovement { get; private set; }
    public bool Grounded => _collisionDown;

    private Vector3 _lastPosition;

    private bool _active;
    
    
    public bool JumpButtonPressed;
    public bool JumpButtonLifted;
    public bool LeftArrowButtonPressed;
    public bool RightArrowButtonPressed;




    private bool _collisionUp, _collisionRight, _collisionDown, _collisionLeft;
    private float _timeLeftGrounded;
    private float _lastLeftRunPressed;
    private float _lastRightRunPressed;

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
    }

    private void Awake()
    {
        GetComponents();
        SetInitialValues();
    }


    private void Update()
    {
        if(!_active) return;

        CalculateCurrentVelocity();
        CheckForInputs();

    }
    
    private void CalculateCurrentVelocity()
    {
        Velocity = (transform.position - _lastPosition) / Time.deltaTime;
        _lastPosition = transform.position;
    }
    
    private void CheckForInputs()
    {
        JumpButtonPressed = Input.GetKeyDown(KeyCode.Space);
        JumpButtonLifted = Input.GetKeyUp(KeyCode.Space);
        LeftArrowButtonPressed = Input.GetKeyDown(KeyCode.A);
        RightArrowButtonPressed = Input.GetKeyDown(KeyCode.D);
        
        _playerData.RawInputValue = Mathf.Clamp(-_playerInputState.ListenLeftInput() + _playerInputState.ListenRightInput(), -1f, 1f);
        
        if (JumpButtonPressed) _lastJumpPressed = Time.time;
        if (LeftArrowButtonPressed) _lastLeftRunPressed = Time.time;
        if (RightArrowButtonPressed) _lastRightRunPressed = Time.time;

    }

    private void CheckForCollisions()
    {
        CalculateRaysRanges();
        
        LandingThisFrame = false;
        
        var groundedCheck = RunDetection(_raysDown);
        
        if (_collisionDown && !groundedCheck) _timeLeftGrounded = Time.time; 
        
        else if (!_collisionDown && groundedCheck)
        {
            _coyoteUsable = true;
            LandingThisFrame = true;
        }

        _collisionDown = groundedCheck;
        
        _collisionUp = RunDetection(_raysUp);
        _collisionLeft = RunDetection(_raysLeft);
        _collisionRight = RunDetection(_raysRight);

        bool RunDetection(RayRange range) => EvaluateRayPositions(range).Any(point => Physics2D.Raycast(point, range.Direction, _detectionRayLength, _groundLayer));
    }
    
    private void CalculateRaysRanges()
    {
        var bounds = new Bounds(transform.position,_characterBounds.size);
        
        _raysDown = new RayRange(bounds.min.x + _rayBuffer, bounds.min.y, bounds.max.x - _rayBuffer, bounds.min.y, Vector2.down);
        _raysUp = new RayRange(bounds.min.x + _rayBuffer, bounds.max.y, bounds.max.x - _rayBuffer, bounds.max.y, Vector2.up);
        _raysLeft = new RayRange(bounds.min.x, bounds.min.y + _rayBuffer, bounds.min.x, bounds.max.y - _rayBuffer, Vector2.left);
        _raysRight = new RayRange(bounds.max.x, bounds.min.y + _rayBuffer, bounds.max.x, bounds.max.y - _rayBuffer, Vector2.right);
    }
    
    private IEnumerable<Vector2> EvaluateRayPositions(RayRange range)
    {
        for (var i = 0; i < _detectorCount; i++)
        {
            var t = (float)i / (_detectorCount - 1);
            yield return Vector2.Lerp(range.Start, range.End, t);
        }
    }

    
    
}*/
