using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody2D))]
public class AppliedPhysics : MonoBehaviour
{
    [SerializeField] private protected Transform _groundCheck;
    [SerializeField] private protected Transform _leftWallCheck;
    [SerializeField] private protected Transform _rightWallCheck;
    [SerializeField] private protected Transform _ceilingCheck;
    [SerializeField] public LayerMask _groundLayerMask;
    [SerializeField] private protected Rigidbody2D _rigidbody2D;

    [SerializeField] private protected float _groundCheckRadius;
    [SerializeField] private protected float _wallCheckDistance;
    [SerializeField] private protected int _facingDirection;
    public int FacingDirection { get { return _facingDirection; } }
    [SerializeField] private protected bool _canSetVelocity;
    [SerializeField] public Vector2 _appliedVelocity;
    [SerializeField] private Vector2 _currentVelocity;

    public void ApplyVelocity() => _currentVelocity = _rigidbody2D.velocity;

    public void SetVelocityZero()
    {
        _appliedVelocity = Vector2.zero;        
        SetFinalVelocity();
    }

    public void SetVelocityXWithYZero(float velocity)
    {
        _appliedVelocity = new Vector2(velocity, 0);
        SetFinalVelocity();
    }

    public void SetVelocity(float velocity, Vector2 angle, int direction)
    {
        angle.Normalize();
        _appliedVelocity = new Vector2(angle.x * velocity * direction, angle.y * velocity);
        SetFinalVelocity();
    }

    public void SetVelocity(float velocity, Vector2 direction)
    {
        _appliedVelocity = direction * velocity;
        SetFinalVelocity();
    }

    public void SetVelocityX(float velocity)
    {
        _appliedVelocity = new Vector2(velocity, _currentVelocity.y);
        SetFinalVelocity();
    }

    public void SetVelocityY(float velocity)
    {
        _appliedVelocity = new Vector2(_currentVelocity.x, velocity);
        SetFinalVelocity();
    }

    private void SetFinalVelocity()
    {
        if (!_canSetVelocity) return;
        _rigidbody2D.velocity = _appliedVelocity;
        _currentVelocity = _appliedVelocity;
    }

    public void CheckFlip(int xInput)
    {
        if (xInput != 0 && xInput != _facingDirection)
        {
            FlipCharacterDirection();
        }
    }

    public void FlipCharacterDirection()
    {
        _facingDirection *= -1;
        _rigidbody2D.transform.Rotate(0.0f, 180.0f, 0.0f);
    }

    public void UpdateHitResults()
    {
        UpdateCeilingHit();
        UpdateGrounded();
        UpdateWallFrontHit();
        UpdateWallBackHit();
    }

    // TODO Also cache the results of hit collider
    public bool CeilingHit { get { return CeilingHitResult; } }
    public Collider2D CeilingHitResult { get; private set; }
    public void UpdateCeilingHit() { CeilingHitResult = Physics2D.OverlapCircle(_ceilingCheck.position, _groundCheckRadius, _groundLayerMask); }

    public bool Grounded { get { return GroundedResult; } }
    public Collider2D GroundedResult { get; private set; }
    public void UpdateGrounded() { GroundedResult = Physics2D.OverlapCircle(_groundCheck.position, _groundCheckRadius, _groundLayerMask); }

    public bool WallFrontHit { get { return WallFrontHitResult.Length > 0; } }
    public RaycastHit2D[] WallFrontHitResult { get; private set; }
    public void UpdateWallFrontHit() { WallFrontHitResult = Physics2D.RaycastAll(_leftWallCheck.position, Vector2.right * _facingDirection, _wallCheckDistance, _groundLayerMask); }

    public bool WallBackHit { get { return WallBackHitResult.Length > 0; } }
    public RaycastHit2D[] WallBackHitResult { get; private set; }
    public void UpdateWallBackHit() { WallBackHitResult = Physics2D.RaycastAll(_rightWallCheck.position, Vector2.right * -_facingDirection, _wallCheckDistance, _groundLayerMask); }
    
}
