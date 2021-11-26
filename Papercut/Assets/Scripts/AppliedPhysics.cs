using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AppliedPhysics : MonoBehaviour
{
    [SerializeField] private Transform _groundCheck;
    [SerializeField] private Transform _wallCheck;
    [SerializeField] private Transform _ledgeCheckHorizontal;
    [SerializeField] private Transform _ledgeCheckVertical;
    [SerializeField] private Transform _ceilingCheck;
    [SerializeField] private LayerMask _groundLayerMask;
    [SerializeField] private protected Rigidbody2D _rigidbody2D;

    [SerializeField] private protected float _groundCheckRadius;
    [SerializeField] private protected float _wallCheckDistance;
    [SerializeField] private protected int _facingDirection;
    [SerializeField] private protected bool _canSetVelocity;
    [SerializeField] public Vector2 _appliedVelocity;
    [SerializeField] private Vector2 _currentVelocity;

    public void ApplyVelocity() => _currentVelocity = _rigidbody2D.velocity;

    public void SetVelocityZero()
    {
        _appliedVelocity = Vector2.zero;        
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

    private void FlipCharacterDirection()
    {
        _facingDirection *= -1;
        _rigidbody2D.transform.Rotate(0.0f, 180.0f, 0.0f);
    }

    public bool Ceiling => Physics2D.OverlapCircle(_ceilingCheck.position, _groundCheckRadius, _groundLayerMask);

    public bool Ground => Physics2D.OverlapCircle(_groundCheck.position, _groundCheckRadius, _groundLayerMask);

    public bool WallFront => Physics2D.Raycast(_wallCheck.position, Vector2.right * _facingDirection, _wallCheckDistance, _groundLayerMask);

    public bool LedgeHorizontal => Physics2D.Raycast(_ledgeCheckHorizontal.position, Vector2.right * _facingDirection, _wallCheckDistance, _groundLayerMask);

    public bool LedgeVertical => Physics2D.Raycast(_ledgeCheckVertical.position, Vector2.down, _wallCheckDistance, _groundLayerMask);

    public bool WallBack => Physics2D.Raycast(_wallCheck.position, Vector2.right * -_facingDirection, _wallCheckDistance, _groundLayerMask);
}
