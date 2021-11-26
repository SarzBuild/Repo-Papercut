using UnityEngine;

public class PlayerInputState : MonoBehaviour
{
    //Player locking things, can't move when its activated, I'll add some functions to swap them
    [SerializeField] public bool LockPlayer;
    [SerializeField] public bool LockMouse;
    
    //Value state, just to keep things straight, we return them with the proper functions.
    [SerializeField] private int _rightInputState;
    [SerializeField] private int _leftInputState;
    [SerializeField] private int _jumpInputState;
    [SerializeField] private int _downInputState;
    [SerializeField] private int _rollInputState;
    [SerializeField] private int _runInputState;
    [SerializeField] private int _lMouseInputState;
    [SerializeField] private int _rMouseInputState;
    [SerializeField] private int _interactionInputState;
    [SerializeField] private int _DashRightInputState;
    [SerializeField] private int _DashLeftInputState;
    
    //When you are looking for an input, take this function
    public int ListenRightInput() => LockPlayer ? 0 : _rightInputState;
    public int ListenLeftInput() => LockPlayer ? 0 : _leftInputState;
    public int ListenJumpInput() => LockPlayer ? 0 : _jumpInputState;
    public int ListenDownInput() => LockPlayer ? 0 : _downInputState;
    public int ListenRollInput() => LockPlayer ? 0 : _rollInputState;
    public int ListenRunInput() => LockPlayer ? 0 : _runInputState; 
    public int ListenLMouseInput() => LockPlayer ? 0 : _lMouseInputState;
    public int ListenRMouseInput() => LockPlayer ? 0 : _rMouseInputState;
    public int ListenInteractionInput() => LockPlayer ? 0 : _interactionInputState;
    /*public int ListenDashRightInput() => LockPlayer ? 0 : _DashRightInputState;
    public int ListenDashLeftInput() => LockPlayer ? 0 : _DashLeftInputState;*/
    

    //Functions to assign in the inspector.
    public void SetRightInput(int inputValue) => _rightInputState = inputValue;
    public void SetLeftInput(int inputValue) => _leftInputState = inputValue;
    public void SetJumpInput(int context) => _jumpInputState = context;
    public void SetDownInput(int context) => _downInputState = context;
    public void SetRollInput(int context) => _downInputState = context;
    public void SetRunInput(int context) => _runInputState = context;
    public void SetLMouseInput(int context) => _lMouseInputState = context;
    public void SetRMouseInput(int context) => _rMouseInputState = context;
    public void SetInteractionInput(int context) => _interactionInputState = context;
    public void SetDashRightInput(int context) => _DashRightInputState = context;
    public void SetDashLeftInput(int context) => _DashLeftInputState = context;





}
