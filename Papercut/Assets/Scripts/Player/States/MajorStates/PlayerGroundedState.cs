using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerGroundedState : PlayerState
{
    protected float xInputValue;
    
    public PlayerGroundedState(Player player, PlayerStateMachine stateMachine, PlayerData playerData, string stateName) : base(player, stateMachine, playerData, stateName)
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
        
        xInputValue = Mathf.Clamp(-Player.InputHandler.ListenLeftInput() + Player.InputHandler.ListenRightInput(),-1f,1f);
        
        /*PlayerData._rightInputValue = PlayerData._inputRetainerJump;
        PlayerData._leftInputValue = PlayerData._inputRetainerJump;*/

        Debug.Log("Hellooooooooo");
        
        if(Player.InputHandler.ListenJumpInput() == 2) StateMachine.ChangeState(Player.JumpState);
        else if(!Player.Ground) StateMachine.ChangeState(Player.InAirState);
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
