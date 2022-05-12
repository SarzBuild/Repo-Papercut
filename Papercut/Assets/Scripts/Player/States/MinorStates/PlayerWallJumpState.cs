using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.SocialPlatforms;

public class PlayerWallJumpState : PlayerState
{
    public PlayerWallJumpState(Player player, PlayerStateMachine stateMachine, PlayerData playerData) : base(player, stateMachine, playerData, PlayerStateId.WallJump) { }
    private Vector2 _wallJumpAngle;
    private float _percentTimeCurve;
    
    public override void EnterState()
    {
        base.EnterState();
        
        Player.FlipCharacterDirection();
        _percentTimeCurve = 1;
        Player.LastWallJumpTime = Time.time;
        PlayerData.CurrentJumpCount--;
    }

    public override void LogicUpdate()
    {
        base.LogicUpdate();
        
        CalculateJumpCurve();
        CalculateJump();
        TimeBeforeJumpEnd();
    }

    public override void DoChecks()
    {
        base.DoChecks();
        
        Player.UpdateHitResults();
    }

    private void CalculateJumpCurve()
    {
        const int maxY = 1;
        const int minY = 0;
 
        _percentTimeCurve -= Time.fixedDeltaTime;

        var max = Mathf.Lerp(minY,maxY,_percentTimeCurve) * PlayerData.MaxCurvaturePercent;
        var min = Mathf.InverseLerp(maxY,minY,_percentTimeCurve) * PlayerData.MinCurvaturePercent;
        var percentage = min + max;

        PlayerData.WallJumpCurrentAngle = PlayerData.CurveSpeedModifier.Evaluate(percentage)*100;
        
        _wallJumpAngle = new Vector2((float)Mathf.Cos(PlayerData.WallJumpCurrentAngle * Mathf.PI / 180), (float)Mathf.Sin(PlayerData.WallJumpCurrentAngle * Mathf.PI / 180));
        
    }
    
    private void CalculateJump()
    {
        if(Player.FacingDirection == 1) Player.SetVelocityX(PlayerData.WallJumpingSpeed * _wallJumpAngle.x); 
        if(Player.FacingDirection == -1) Player.SetVelocityX(-PlayerData.WallJumpingSpeed *  _wallJumpAngle.x);
        Player.SetVelocityY(PlayerData.WallJumpingSpeed * _wallJumpAngle.y);
        Player.ApplyVelocity();
    }

    private void TimeBeforeJumpEnd()
    {
        var cooldownTime = Player.LastWallJumpTime + PlayerData.DelayOfWallJump;
        if (Time.time - cooldownTime > 0)
        {
            if(Player.FacingDirection == 1) PlayerData.CurrentHorizontalSpeed = PlayerData.EndWallJumpXVelocity;
            if(Player.FacingDirection == -1) PlayerData.CurrentHorizontalSpeed = -PlayerData.EndWallJumpXVelocity;
            PlayerData.CurrentVerticalSpeed = PlayerData.EndWallJumpYVelocity;
            StateMachine.ChangeState(Player.InAirState);
        }
    }
}
