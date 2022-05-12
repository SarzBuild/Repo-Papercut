using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerJumpState : PlayerState
{
    public bool JumpingThisFrame;
    public float TimeSinceLastJump;

    public PlayerJumpState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.Jump)
    {
    }
    
    public override void EnterState()
    {
        base.EnterState();
        PlayerData.LastTimeJumpKeyWasPressed = Time.time;
        CalculateJump();
        StateMachine.ChangeState(Player.InAirState);
    }

    private bool CanUseCoyote => PlayerData.CoyoteUsable && !PlayerData.CollisionDown && PlayerData.TimePlayerStoppedGrounded + PlayerData.CoyoteTimeThreshold > Time.time;
    private bool HasBufferedJump => PlayerData.CollisionDown && PlayerData.LastTimeJumpKeyWasPressed + PlayerData.JumpBuffer > Time.time;
    private bool CanJump => PlayerData.CurrentJumpCount > 0;
    private bool TimeIsRight => TimeSinceLastJump + PlayerData.TimeBetweenDoubleJump < Time.time;

    private void CalculateJump()
    {
        if ((CanJump && TimeIsRight && !Player.Grounded) || CanUseCoyote || HasBufferedJump)
        {
            PlayerData.CurrentVerticalSpeed = PlayerData.JumpHeight;
            Player.SetVelocityY(PlayerData.CurrentVerticalSpeed);
            PlayerData.EndedJumpEarly = false;
            PlayerData.CoyoteUsable = false;
            PlayerData.TimePlayerStoppedGrounded = float.MinValue;
            PlayerData.CurrentJumpCount--;
            JumpingThisFrame = true;
            TimeSinceLastJump = Time.time;
            GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.PlayerJump,Player.gameObject);
        }
        else
        {
            JumpingThisFrame = false;
        }
        
    }
}

//TODO Fix Buffer jump with reseting the jump amount when the character buffers