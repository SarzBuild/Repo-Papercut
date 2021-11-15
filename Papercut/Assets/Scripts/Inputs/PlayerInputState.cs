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
    [SerializeField] private int _slideInputState;
    
    //When you are looking for an input, take this function
    public int ListenRightInput() => LockPlayer ? 0 : _rightInputState;
    public int ListenLeftInput() => LockPlayer ? 0 : _leftInputState;
    public int ListenJumpInput() => LockPlayer ? 0 : _jumpInputState;
    public int ListenDownInput() => LockPlayer ? 0 : _downInputState;
    public int ListenSlideInput() => LockPlayer ? 0 : _slideInputState;

    //Functions to assign in the inspector.
    public void SetRightInputStarted(int inputValue) => _rightInputState = inputValue; 
    public void SetRightInputPerformed(int inputValue) => _rightInputState = inputValue; 
    public void SetRightInputCancelled(int inputValue) => _rightInputState = inputValue; 
    
    public void SetLeftInputStarted(int inputValue) => _leftInputState = inputValue;
    public void SetLefInputPerformed(int inputValue) => _leftInputState = inputValue;
    public void SetLefInputCancelled(int inputValue) => _leftInputState = inputValue;
    
    public void SetJumpInputStarted(int context) => _jumpInputState = context;
    public void SetJumpInputPerformed(int context) => _jumpInputState = context;
    public void SetJumpInputCancelled(int context) => _jumpInputState = context;
    
    public void SetDownInputStarted(int context) => _downInputState = context;
    public void SetDownInputPerformed(int context) => _downInputState = context;
    public void SetDownInputCancelled(int context) => _downInputState = context;
    
    public void SetSlideInputStarted(int context) => _downInputState = context;
    public void SetSlideInputPerformed(int context) => _downInputState = context;
    public void SetSlideInputCancelled(int context) => _downInputState = context;
    




}
