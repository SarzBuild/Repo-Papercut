using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerJumpState : PlayerState
{
    private int _jumpAmount;
    private float _jumpTimer;
    public PlayerJumpState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
    {
    }
    /*public override void EnterState()
    {
        base.EnterState();
        IsAbilityDone = true;
        PlayerData.AffectedByGravity = false;
        DecreaseJumpAmount();
        SetJumpSpeed();
        
    }
    public override void LogicUpdate()
    {
        base.LogicUpdate();
        
        HandleJump();
        DecreaseJumpSpeed();
    }

    public override void ExitState()
    {
        base.ExitState();
        PlayerData.AffectedByGravity = true;
        _jumpTimer = 0f;
        PlayerData._jumpAndFallVelocity = 0f;
    }

    private void HandleJump()
    {
        if ((!(_jumpTimer < PlayerData._jumpingHeightMinimumLimit) || Player.InputHandler.ListenJumpInput() != 2) && !(_jumpTimer > PlayerData._jumpingHeightMaximumLimit)) return;
        _jumpTimer += Time.fixedDeltaTime;
        PlayerData._jumpAndFallVelocity += (PlayerData.CurrentSpeed * PlayerData.JumpForce) * PlayerData._jumpingForceDeminisher;
        Player.SetVelocityY(PlayerData._jumpAndFallVelocity);
    }

    private void SetJumpSpeed() => PlayerData.JumpingSpeed = PlayerData._jumpingSpeedMaxThreshold;
    
    private void DecreaseJumpSpeed()
    {
        if (PlayerData.JumpingSpeed >= PlayerData._jumpingSpeedLowThreshold) PlayerData.JumpingSpeed -= Time.fixedDeltaTime * 0.5f;
        else PlayerData.JumpingSpeed = PlayerData._jumpingSpeedLowThreshold;
    }

    public bool CanJump() => _jumpAmount > 0;

    public void SetAmountOfJump() => _jumpAmount = PlayerData.JumpAmountTotal;
    public void DecreaseJumpAmount() => _jumpAmount--;
    
*/}
