using UnityEngine;

public class PlayerInputState : MonoBehaviour
{
    [SerializeField] public bool LockPlayer;
    [SerializeField] public bool LockMouse;
    
    [SerializeField]private int _rightInputState;
    [SerializeField]private int _leftInputState;
    [SerializeField]private int _jumpInputState;
    [SerializeField]private int _downInputState;


    private int rightinput;

    public void SetRightInput(int rightinput)
    {
        this.rightinput = rightinput;
    }
    
    
    
    

    public int ListenRightInput() => LockPlayer ? 0 : _rightInputState;
    public int ListenLeftInput() => LockPlayer ? 0 : _leftInputState;
    public int ListenJumpInput() => LockPlayer ? 0 : _jumpInputState;
    public int ListenDownInput() => LockPlayer ? 0 : _downInputState;
    
    
    
    
    public void SetRightInputStarted() => _rightInputState = 1; 
    public void SetRightInputPerformed() => _rightInputState = 2; 
    public void SetRightInputCancelled() => _rightInputState = 0;
    
    public void SetLeftInputStarted() => _leftInputState = 1;
    public void SetLefInputPerformed() => _leftInputState = 2;
    public void SetLefInputCancelled() => _leftInputState = 0;
    
    public void SetJumpInputStarted() => _jumpInputState = 1;
    public void SetJumpInputPerformed() => _jumpInputState = 2;
    public void SetJumpInputCancelled() => _jumpInputState = 0;
    
    public void SetDownInputStarted() => _downInputState = 1;
    public void SetDownInputPerformed() => _downInputState = 2;
    public void SetDownInputCancelled() => _downInputState = 0;
    
    




}
