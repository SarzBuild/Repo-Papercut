using System.Text;
using UnityEngine;

public class PlayerInputState : MonoBehaviour
{
    //Player locking things, can't move when its activated, I'll add some functions to swap them
    [SerializeField] public bool LockPlayer { get; private set; }
    [SerializeField] public bool LockMouse { get; private set; }
    public Camera _mainCamera;
    
    //Value state, just to keep things straight, we return them with the proper functions.
    [SerializeField] private int _rightInputState;
    [SerializeField] private int _leftInputState;
    [SerializeField] private int _jumpInputState;
    [SerializeField] private int _downInputState;
    [SerializeField] private int _runInputState;
    [SerializeField] private int _dashInputState;
    [SerializeField] private int _lMouseInputState;
    [SerializeField] private int _rMouseInputState;
    [SerializeField] private int _interactionInputState;

    //When you are looking for an input, take this function
    public int ListenRightInput { get { return LockPlayer ? 0 : _rightInputState; }}
    public int ListenLeftInput { get { return LockPlayer ? 0 : _leftInputState; }}
    public int ListenJumpInput { get { return LockPlayer ? 0 : _jumpInputState; }}
    public int ListenDownInput { get { return LockPlayer ? 0 : _downInputState; }}
    public int ListenRunInput  { get { return LockPlayer ? 0 : _runInputState; }}
    public int ListenDashInput { get { return LockPlayer ? 0 : _dashInputState; }}
    public int ListenLMouseInput { get { return LockPlayer ? 0 :  _lMouseInputState; }}
    public int ListenRMouseInput { get { return LockPlayer ? 0 :  _rMouseInputState; }}
    public int ListenInteractionInput { get { return LockPlayer ? 0 :  _interactionInputState; }}
    public Vector3 GetMousePos { get
        {
            var camZ = _mainCamera.transform.position.z;
            return LockPlayer ? 
                _mainCamera.ScreenToWorldPoint(new Vector3(Screen.width / 2, Screen.height / 2,0 - camZ)) : 
                _mainCamera.ScreenToWorldPoint(new Vector3(Input.mousePosition.x,Input.mousePosition.y, 0 - camZ));
        }
    }

    //Functions to assign in the inspector.
    public void SetRightInput(int inputValue) => _rightInputState = inputValue;
    public void SetLeftInput(int inputValue) => _leftInputState = inputValue;
    public void SetJumpInput(int context) => _jumpInputState = context;
    public void SetDownInput(int context) => _downInputState = context;
    public void SetDashInput(int context) => _dashInputState = context;
    public void SetRunInput(int context) => _runInputState = context;
    public void SetLMouseInput(int context) => _lMouseInputState = context;
    public void SetRMouseInput(int context) => _rMouseInputState = context;
    public void SetInteractionInput(int context) => _interactionInputState = context;

    public void AppendDebugMessage(ref StringBuilder builder)
    {
        builder.AppendFormat("LockPlayer [{0}] LockMouse [{1}] | R [{2}] | L [{3}] | Jump [{4}] | Down [{5}] | Run [{6}] | Dash [{7}] | MouseR [{8}] | MouseL [{9}] | Interact [{10}]",
            LockPlayer, LockMouse,
            _rightInputState, _leftInputState,
            _jumpInputState, _downInputState,
            _runInputState, _dashInputState,
            _rMouseInputState, _lMouseInputState,
            _interactionInputState);
    }

    public void LockPlayerInputs(bool value)
    {
        LockPlayer = value;
    }

    public void LockMouseInputs(bool value)
    {
        LockMouse = value;
    }

}
