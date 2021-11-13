using System.Collections;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    [Header("References")] 
    private Rigidbody2D _rigidbody2D;
    private Collider2D _collider2D;
    public Transform HeadPos;
    public Transform FeetPos;
    private PlayerInputState _playerInputState;

    [Header("Physics")]
    public float WalkSpeed = 4f;
    public float JumpingSpeed;
    public float DashSpeed;
    public float Gravity = -9.81f;
    public float JumpForce = 12f;
    public Vector3 AimDirection;
    
    private float _jumpAndFallVelocity;
    private bool _resetJumpCoroutine;
    private bool _dashCoroutine;
    private Vector3 _rotationNeeded;
    private Vector3 _tempDashDirection;
    private Vector3 _moveDirection;

    [Header("Layer Masks")]
    public LayerMask GroundLayerMask;
    public LayerMask EnemyLayerMask;

    [Header("Health")]
    public int MaxHealth;
    public int CurrentHealth;

     private void Start()
    {
        CurrentHealth = MaxHealth;
        _rigidbody2D = GetComponent<Rigidbody2D>();
        _collider2D = GetComponent<Collider2D>();
        _playerInputState = GetComponent<PlayerInputState>();
        _playerInputState.LockPlayer = false;
    }

    private void Update()
    {
        HandleLife();
        //HandleDash();
        HandleMovementDirectionInput();
    }
    private void FixedUpdate()
    {
        HandleMovement();
        HandleJump();
        HandleFall();
        DecreaseJumpSpeed();
        DashMovement();
    }

    private void HandleMovementDirectionInput() => _moveDirection = new Vector2(-_playerInputState.ListenLeftInput() + _playerInputState.ListenRightInput(),0f);
    
    private void HandleMovement()
    {
        _moveDirection.Normalize();
        var moveTowardsPosition = new Vector2(_moveDirection.x * WalkSpeed, _jumpAndFallVelocity);
        _rigidbody2D.velocity = moveTowardsPosition;
    }

    private void HandleJump()
    {
        if (_playerInputState.ListenJumpInput() is 0) return;
        if (!CheckIfGrounded()) return;
        if (!(_jumpAndFallVelocity < 0.1)) return;
        
        StartCoroutine(SetJumpSpeedCoroutine());
        _jumpAndFallVelocity += (WalkSpeed * JumpForce) * 0.2f;
    }

    private IEnumerator SetJumpSpeedCoroutine()
    {
        _resetJumpCoroutine = true;
        JumpingSpeed = 1.5f;
        yield return new WaitForSeconds(1f);
        _resetJumpCoroutine = false;
    }
    
    private void DecreaseJumpSpeed()
    {
        if (!_resetJumpCoroutine) return;
        if (JumpingSpeed > 1f) JumpingSpeed -= Time.fixedDeltaTime * 0.5f;
        else JumpingSpeed = 1f;
    }

    private void HandleFall()
    {
        if (!CheckIfGrounded()) _jumpAndFallVelocity += (Gravity * WalkSpeed / 2) * Time.deltaTime;
        else if (CheckIfGrounded() && _jumpAndFallVelocity <= 0f) ResetJumpVariablesAndCoroutine();
    }

    private void ResetJumpVariablesAndCoroutine()
    {
        _jumpAndFallVelocity = 0f;
        JumpingSpeed = 1f;
        if (!_resetJumpCoroutine) return;
        StopCoroutine(SetJumpSpeedCoroutine());
        _resetJumpCoroutine = false;
    }

    private void HandleLife()
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
        if (!CheckIfGrounded()) return;
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

    private bool CheckIfGrounded() => CollisionCheck(new Vector3(0, -0.5f, 0), 1f, 0.5f, GroundLayerMask);
    private bool CollisionCheck(Vector3 direction,float radius , float maxLength, LayerMask layerMask)
    {
        RaycastHit2D hit = Physics2D.BoxCast(
            _collider2D.bounds.center, 
            _collider2D.bounds.size / 1.5f, 
            0f, 
            Vector2.down,
            0.35f,
            GroundLayerMask
        ); 
        return hit;
    }
    
}
