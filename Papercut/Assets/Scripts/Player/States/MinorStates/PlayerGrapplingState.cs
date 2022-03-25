using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;
using Vector2 = UnityEngine.Vector2;

public class PlayerGrapplingState : PlayerState
{
    public PlayerGrapplingState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Grappling)
    {
    }

    private Vector2 _grapplePoint;
    private Vector2 _leftStartPoint, _rightStartPoint;
    private Vector2 _startPoint;
    private Vector2 _grappleDistanceVector;
    private bool _straightLine;
    private float _waveSize;
    private float _moveTime;
    private bool _canStartRopeAnimation;
    private bool _canGrapple;
    private float _ropeFallAcceleration;
    private bool _activeVelocity;
    private Vector2 _ray;
    private float _ropeFallVelocity;
    private float _velocityX, _velocityY;

    public override void EnterState()
    {
        if (!PlayerData.GrapplingAbilityActive) { StateMachine.ChangeState(StateMachine.LastState); }
        base.EnterState();
        Initialize();
        SetGrapplePoint();
        //Player.SetVelocityZero();
    }

    private void Initialize()
    {
        _moveTime = 0;
        Player.LineRenderer.positionCount = PlayerData.RopePrecision;
        _waveSize = PlayerData.StartWaveSize;
        _straightLine = false;
        _ropeFallAcceleration = 0f;
        _startPoint = Player.transform.position;
    }

    public override void ExitState()
    {
        base.ExitState();
        WhenDisable();
    }

    private void WhenDisable()
    {
        Player.LineRenderer.enabled = false;
        _canGrapple = false;
        ApplyVelocityWhenExitingState();
        _activeVelocity = false;
        _velocityX = 0f;
        _velocityY = 0f;
        PlayerData.CurrentJumpCount = PlayerData.MaximumJumpCount;
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();

        if (Player.InputHandler.ListenRMouseInput == 0)
        {
            StateMachine.ChangeState(Player.InAirState);
        }

        if (!_canGrapple && !_activeVelocity && Player.InputHandler.ListenJumpInput == 2)
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        
        _startPoint = Player.transform.position;

        if (_canStartRopeAnimation)
        {
            DrawRope();
            _moveTime += Time.fixedDeltaTime;
            CalculateVelocity();
        }
        
    }

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
        if (!_canGrapple && !_activeVelocity)
        {
            Player.UpdateVelocity();
            Player.MovementClampedAndApex();
            Player.CheckFlip((int)PlayerData.RawInputValue);
        }
    }

    private void ApplyVelocityWhenExitingState() //Sets the velocity of the normal states 
    {
        if (!_activeVelocity) {return;}
        PlayerData.CurrentHorizontalSpeed = PlayerData.EndGrappleXVelocity * _velocityX;
        PlayerData.CurrentVerticalSpeed = PlayerData.EndGrappleYVelocity * _velocityY;
    }

    private void CalculateVelocity() //Calculates the velocity
    {
        if (_activeVelocity)
        {
            var direction = _grapplePoint - (Vector2)Player.transform.position;
            var distance = Vector2.Distance(_grapplePoint, Player.transform.position);
            
            //Debug.Log("Direction: " + direction + "    " + "Distance: " + distance);

            if(Mathf.Abs(direction.x) > 0.5) { _velocityX = Mathf.Clamp(_velocityX + Mathf.Sign(direction.x) * PlayerData.PullingSpped * Time.fixedDeltaTime, -PlayerData.PullingSpped, PlayerData.PullingSpped); }
            else { _velocityX = Mathf.Sign(direction.x); }
            
            
            if (Mathf.Abs(distance) > 1) { _velocityY = Mathf.Clamp(_velocityY + Mathf.Sign(direction.y) * PlayerData.PullingSpped * Time.fixedDeltaTime, -PlayerData.PullingSpped, PlayerData.PullingSpped); }
            else { _velocityY = 0; }
            
            Player.SetVelocityX(_velocityX);
            Player.SetVelocityY(_velocityY);
            Player.ApplyVelocity();
        }
    }

    private void SetGrapplePoint() //Check to set a grapple point, if the pointer is behind a wall, it'll target the wall
    {
        _ray = Player.InputHandler.GetMousePos - Player.transform.position;
        Player.CheckFlip((int)Mathf.Sign(_ray.x));
        
        
        var hits = Physics2D.RaycastAll(_startPoint, _ray.normalized, Vector2.Distance(Player.InputHandler.GetMousePos,Player.transform.position));

        if (hits.Length > 1) //Automatically hits the player therefor we nullify it by adding a default number of 1
        {
            foreach (var hit in hits)
            {
                if (hit.transform.gameObject.layer != PlayerData.PlayerLayerMask)
                {
                    if ((PlayerData.GrappleTargetableLayer.value & (1 << hit.transform.gameObject.layer)) > 0) { _canGrapple = true; }
                    else { _canGrapple = false; }
                
                    _grapplePoint = hit.collider.ClosestPoint(hit.point);
                    _grappleDistanceVector = _grapplePoint - _startPoint;
                    ShootRope();
                }
            }
        }
        else
        {
            _canGrapple = false;
            _grapplePoint = Player.InputHandler.GetMousePos; 
            _grappleDistanceVector = _grapplePoint - _startPoint;
            ShootRope();
        }
    }

    private void ShootRope() //Start the rope shooting
    {
        LinePointsToFirePoint();
        Player.LineRenderer.enabled = true;
        _canStartRopeAnimation = true;
    }

    private void DrawRope() //Sequences the activation of the gravity
    {
        if (!_straightLine)
        {
            if (Player.LineRenderer.GetPosition(PlayerData.RopePrecision - 1).x == _grapplePoint.x)
            {
                _straightLine = true;
            }
            else
            {
                DrawRopeWaves();
            }
        }
        else
        {
            if (_canGrapple)
            {
                _activeVelocity = true;
                _canGrapple = false;
            }
            else
            {
               GrapplePointFall();
               DrawRopeWaves();
            }
            if (_waveSize > 0)
            {
                _waveSize -= Time.deltaTime * PlayerData.StraightenLineSpeed;
                DrawRopeWaves();
            }
        }
    }

    private void GrapplePointFall() //If the grappling hook catches nothing, it falls until it reaches the ground;
    {
        Collider2D hitGround = Physics2D.OverlapCircle(_grapplePoint, 0.1f, Player._groundLayerMask);
        Collider2D hitGrappleTarget = Physics2D.OverlapCircle(_grapplePoint, 0.1f, PlayerData.GrappleTargetableLayer);
        if (hitGround == null && hitGrappleTarget == null)
        {
            if (_ray.x > 0) {_ropeFallVelocity = 0.1f;}
            else {_ropeFallVelocity = -0.1f;}

            _ropeFallAcceleration += Time.fixedDeltaTime;
            _grapplePoint = new Vector2(_grapplePoint.x + _ropeFallVelocity, _grapplePoint.y - _ropeFallAcceleration);
        }
    }
    
    private void LinePointsToFirePoint() //Sets the point of the precision of the rope
    {
        for (int i = 0; i < PlayerData.RopePrecision; i++)
        {
            Player.LineRenderer.SetPosition(i, _startPoint);
        }
    }
    
    private void DrawRopeWaves() //Draw the rope depending on the number of point of precision, reducing the precision each time it loops
    {
        for (int i = 0; i < PlayerData.RopePrecision; i++)
        {
            float delta = (float)i / ((float)PlayerData.RopePrecision - 1f);
            Vector2 offset = Vector2.Perpendicular(_grappleDistanceVector).normalized * PlayerData.RopeAnimationCurve.Evaluate(delta) * _waveSize;
            Vector2 targetPosition = Vector2.Lerp(_startPoint, _grapplePoint, delta) + offset;
            Vector2 currentPosition = Vector2.Lerp(_startPoint, targetPosition, PlayerData.RopeProgressionCurve.Evaluate(_moveTime) * PlayerData.RopeProgressionSpeed);
    
            Player.LineRenderer.SetPosition(i, currentPosition);
        }
    }

}
