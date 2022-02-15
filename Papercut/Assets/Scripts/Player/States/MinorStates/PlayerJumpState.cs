using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerJumpState : PlayerState
{
    private int _jumpAmount;
    private float _jumpTimer;
    private bool JumpingThisFrame;

    public PlayerJumpState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }
    
    public override void EnterState()
    {
        base.EnterState();
        CalculateJump();
        StateMachine.ChangeState(Player.InAirState);
        
    }

    private bool CanUseCoyote => PlayerData._coyoteUsable && !PlayerData.CollisionDown && PlayerData._timeLeftGrounded + PlayerData._coyoteTimeThreshold > Time.time;
    private bool HasBufferedJump => PlayerData.CollisionDown && PlayerData._lastJumpPressed + PlayerData._jumpBuffer > Time.time;

    private void CalculateJump()
    {
        if (true||CanUseCoyote || HasBufferedJump)
        {
            PlayerData._currentVerticalSpeed = PlayerData._jumpHeight;
            Player.SetVelocityY(PlayerData._currentVerticalSpeed);
            PlayerData._endedJumpEarly = false;
            PlayerData._coyoteUsable = false;
            PlayerData._timeLeftGrounded = float.MinValue;
            JumpingThisFrame = true;
        }
        else
        {
            JumpingThisFrame = false;
        }
        
    }
}
