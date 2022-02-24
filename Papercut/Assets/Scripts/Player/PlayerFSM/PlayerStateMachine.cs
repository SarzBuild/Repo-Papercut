using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerStateMachine
{
    public PlayerState CurrentState { get; private set; }
    public PlayerState LastState { get; private set; }

    public void Initialize(PlayerState startingState)
    {
        CurrentState = startingState;
        CurrentState.EnterState();
    }

    public void ChangeState(PlayerState newState)
    {
        CurrentState.ExitState();
        LastState = CurrentState;
        CurrentState = newState;
        CurrentState.EnterState();
    }
}
