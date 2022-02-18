using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerJumpState : PlayerState
{
    public bool JumpingThisFrame;
    public float TimeSinceLastJump;

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
    private bool CanJump => PlayerData.CurrentJumpCount > 0;
    private bool TimeIsRight => TimeSinceLastJump + PlayerData.TimeBetweenDoubleJump > Time.time;

    private void CalculateJump()
    {
        if ((CanJump && TimeIsRight && !Player.Grounded) || CanUseCoyote || HasBufferedJump)
        {
            PlayerData._currentVerticalSpeed = PlayerData._jumpHeight;
            Player.SetVelocityY(PlayerData._currentVerticalSpeed);
            PlayerData._endedJumpEarly = false;
            PlayerData._coyoteUsable = false;
            PlayerData._timeLeftGrounded = float.MinValue;
            PlayerData.CurrentJumpCount--;
            JumpingThisFrame = true;
            TimeSinceLastJump = Time.time;
        }
        else
        {
            JumpingThisFrame = false;
        }
        
    }
}

//TODO Fix Buffer jump with reseting the jump amount when the character buffers