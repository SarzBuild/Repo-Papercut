using System;
using System.Collections;
using UnityEngine;
using UnityEngine.SocialPlatforms;

public class PlayerController : AppliedPhysics
{
    //TODO (JT) Add floaty air control
    //TODO (JT) Add run and slide mechanics
    
    
    [Header("References")] 
    //[SerializeField] private Rigidbody2D _rigidbody2D;
    [SerializeField] private Collider2D _collider2D;
    [SerializeField] private PlayerInputState _playerInputState;
    [SerializeField] public Transform HeadPos;
    [SerializeField] public Transform FeetPos;

    [Header("Physics")] 
    [SerializeField] private float _currentSpeed;
    [SerializeField] private float WalkSpeed = 4f;
    [SerializeField] private float _runningSpeed = 6f;
    [SerializeField] private float JumpingSpeed;
    [SerializeField] private float DashSpeed;
    [SerializeField] private float Gravity = -9.81f;
    [SerializeField] private float JumpForce = 12f;
    [SerializeField] private Vector3 AimDirection;
    
    [SerializeField] private float _jumpAndFallVelocity;
    [SerializeField] private bool _resetJumpCoroutine;
    [SerializeField] private bool _dashCoroutine;
    [SerializeField] private Vector3 _rotationNeeded;
    [SerializeField] private Vector3 _tempDashDirection;
    [SerializeField] private Vector3 _moveDirection;

    [SerializeField] private float _rawInputValue;
    [SerializeField] private float _rv;
    [SerializeField] private float _lv;
    [SerializeField] [Range(0, 1)] private float _inputRetainerJump = 0.25f;

    [SerializeField] private float _jumpTimer;

    [SerializeField] private bool _currentlyJumping;

    [SerializeField] private float _airSensibility;

    [SerializeField] private float _jumpingSpeedLowThreshold = 1f;
    [SerializeField] private float _jumpingSpeedMaxThreshold = 1.5f;

    [SerializeField] private float _jumpingForceDeminisher = 0.02f;

    [SerializeField] private float movementX;

    private Coroutine _resetJump;

    private Coroutine _resetDash;

    private Coroutine _currentlyJump;

    [Header("Layer Masks")]
    [SerializeField] public LayerMask GroundLayerMask;
    [SerializeField] public LayerMask EnemyLayerMask;

    [Header("Health")]
    [SerializeField] public int MaxHealth;
    [SerializeField] public int CurrentHealth;

     private void Start()
    {
        CurrentHealth = MaxHealth;
        //_rigidbody2D = GetComponent<Rigidbody2D>();
        _collider2D = GetComponent<Collider2D>();
        _playerInputState = GetComponent<PlayerInputState>();
        _playerInputState.LockPlayer = false;
    }

    private void Update()
    {
        HandleRawInputValue();
        HandleMovementInputOnGround();
        HandleMovementInputInAir();
    }
    
    private void FixedUpdate()
    {
        SetMovement();
        HandleJump();
        HandleFall();
        DecreaseJumpSpeed();
        //DashMovement();
    }

    private void HandleRawInputValue() =>  _rawInputValue = Mathf.Clamp(-_playerInputState.ListenLeftInput() + _playerInputState.ListenRightInput(),-1f,1f);

    private void HandleMovementInputOnGround()
    {
        if (!Ground || _resetJumpCoroutine) return;
        movementX = _rawInputValue;
    }
    
    private void HandleMovementInputInAir()
    {
        if (Ground || !_resetJumpCoroutine) return;
        _moveDirection = new Vector2(HandleRightAirMovement() + HandleLeftAirMovement(),0f);
    }
    
    private float HandleRightAirMovement()
    {
        if (Math.Abs(_rawInputValue - 1) < 0.1f)
        {
            _lv = 0f;
            return _rv = Mathf.Clamp01(_rv * 1.33f + _airSensibility * Time.deltaTime);
        }
        return _rv = Mathf.Clamp01(Mathf.Abs(_rv) - _airSensibility * Time.fixedDeltaTime) * Mathf.Sign(_rv);
    }

    private float HandleLeftAirMovement()
    {
        if (Math.Abs(_rawInputValue - (-1)) < 0.1f)
        {
            _rv = 0f;
            return -(_lv = Mathf.Clamp01(_lv * 1.33f + _airSensibility * Time.deltaTime));
        }
        return -(_lv = Mathf.Clamp01(Mathf.Abs(_lv) - _airSensibility * Time.fixedDeltaTime) * Mathf.Sign(_lv));
    }
    
    private void SetMovement()
    {
        //_rigidbody2D.velocity = Ground ? new Vector2(_moveDirection.x * WalkSpeed, _jumpAndFallVelocity) : new Vector2((HandleRightAirMovement() + HandleLeftAirMovement()) * WalkSpeed * JumpingSpeed, _jumpAndFallVelocity);
    }

    private void ResetAirMovementVar()
    {
        _rv = 0;
        _lv = 0;
    }

    private void HandleJump()
    {
        if (!Ground || !(_jumpAndFallVelocity < 0.02)) return;
        //if(Ground) ResetAirMovementVar();
        //_resetJump = StartCoroutine(SetJumpSpeedCoroutine());
        _currentlyJump = StartCoroutine(HandleJumping());
    }

    private IEnumerator HandleJumping()
    {
        _currentlyJumping = true;
        while (_jumpTimer <= 0.2f && _playerInputState.ListenJumpInput() == 2)
        {
            _jumpTimer += Time.fixedDeltaTime;
            _jumpAndFallVelocity += (WalkSpeed * JumpForce) * _jumpingForceDeminisher;
            yield return null;
        }
        _jumpTimer = 0;
        _currentlyJumping = false;
    }

    /*private IEnumerator SetJumpSpeedCoroutine()
    {
        _resetJumpCoroutine = true;
        JumpingSpeed = _jumpingSpeedMaxThreshold;
        yield return new WaitForSeconds(_jumpingSpeedMaxThreshold + 0.5f);
        _resetJumpCoroutine = false;
    }*/
    
    private void DecreaseJumpSpeed()
    {
        if (!_resetJumpCoroutine) return;
        if (JumpingSpeed >= _jumpingSpeedLowThreshold) JumpingSpeed -= Time.fixedDeltaTime * 0.5f;
        else JumpingSpeed = _jumpingSpeedLowThreshold;
    }

    private void HandleFall()
    {
        if(Ceiling) ResetJumpVariablesAndCoroutine();
        switch (Ground)
        {
            case false:
                _jumpAndFallVelocity += (Gravity * WalkSpeed / 2) * Time.deltaTime;
                break;
            case true when _jumpAndFallVelocity <= 0f:
                ResetJumpVariablesAndCoroutine();
                break;
        }
    }

    private void ResetJumpVariablesAndCoroutine()
    {
        _jumpAndFallVelocity = 0f;
        JumpingSpeed = _jumpingSpeedLowThreshold;
        if (!_resetJumpCoroutine) return;
        //StopCoroutine(SetJumpSpeedCoroutine());
        StopCoroutine(HandleJumping());
        _resetJumpCoroutine = false;
    }

    /*private void HandleLife()
    {
        if (CurrentHealth > MaxHealth) CurrentHealth = MaxHealth;
        else if (CurrentHealth <= 0)
        {
            CurrentHealth = 0;
            _playerInputState.LockPlayer = true;
            _playerInputState.LockMouse = true;
        }
    }

    private void HandleDash()
    {
        //if (!GetStrafeInput()) return;
        if (!Ground) return;
        if (_dashCoroutine) return;
        _tempDashDirection = new Vector3(_rigidbody2D.velocity.x * DashSpeed, _rigidbody2D.velocity.y);
        StartCoroutine(Dash());
    }

    private void DashMovement()
    {
        if(!_dashCoroutine) return;
        _rigidbody2D.velocity = _tempDashDirection;
    }

    private IEnumerator Dash()
    {
        _dashCoroutine = true;
        _playerInputState.LockPlayer = true;
        yield return new WaitForSeconds(0.5f);
        _playerInputState.LockPlayer = false;
        _dashCoroutine = false;
    }

    private bool CheckIfGrounded() => CollisionCheck(0f, Vector2.down, 0.35f).collider != null;
    private bool CheckCeilingCollision() => CollisionCheck(0f, Vector2.up, 0.35f).collider != null;
    private RaycastHit2D CollisionCheck(float angle, Vector2 direction, float extraDistance)
    {
        var bounds = _collider2D.bounds;
        RaycastHit2D hit = Physics2D.BoxCast(
            bounds.center, 
            bounds.size / 1.5f, 
            angle, 
            direction,
            extraDistance,
            GroundLayerMask
        ); 
        return hit;
    }*/
    
}
