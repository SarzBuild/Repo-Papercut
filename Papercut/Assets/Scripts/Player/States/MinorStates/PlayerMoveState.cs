using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerMoveState : PlayerState
{
    public PlayerMoveState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }

    public override void EnterState()
    {
        base.EnterState();
    }

    public override void ExitState()
    {
        base.ExitState();
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        
        Player.CheckFlip((int)PlayerData.RawInputValue);
        //PlayerData.CurrentSpeed = PlayerData.WalkSpeed;
        Player.SetVelocityX(PlayerData.RawInputValue * PlayerData.WalkingSpeed);

        if (IsExitingState) return;
        HandleStateChange();
    }
    
    private void HandleStateChange()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            StateMachine.ChangeState(Player.JumpState);
        }
        else if (PlayerData._currentVerticalSpeed < 0)
        {
            StateMachine.ChangeState(Player.InAirState);
        }
        else if (Player.InputHandler.ListenRunInput() == 2 && Player.CurrentDashCount >= 1)
        {
            StateMachine.ChangeState(Player.DashState);
        }
        else
        {
            if (Player._appliedVelocity == Vector2.zero)
            {
                StateMachine.ChangeState(Player.IdleState);
            }
        }
    }

    private void Movement()
    {
        if (PlayerData.RawInputValue != 0)
        {
            _currentHorizontalSpeed += Input.X * _acceleration * Time.deltaTime;
            
            _currentHorizontalSpeed = Mathf.Clamp(_currentHorizontalSpeed, -_moveClamp, _moveClamp);
            
            var apexBonus = Mathf.Sign(Input.X) * _apexBonus * _apexPoint;
            _currentHorizontalSpeed += apexBonus * Time.deltaTime;
        }
        else
        {
            _currentHorizontalSpeed = Mathf.MoveTowards(_currentHorizontalSpeed, 0, _deAcceleration * Time.deltaTime);
        }

        if (_currentHorizontalSpeed > 0 && _collisionRight || _currentHorizontalSpeed < 0 && _collisionLeft)
        {
            _currentHorizontalSpeed = 0;
        }
    }
    

    public override void PhysicsUpdate()
    {
        base.PhysicsUpdate();
    }

    public override void DoChecks()
    {
        base.DoChecks();
    }
}
