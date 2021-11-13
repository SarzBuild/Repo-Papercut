using System;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

//EVENTS
[Serializable] public class MoveRightInputStarted : UnityEvent<int>{}
[Serializable] public class MoveRightInputPerformed : UnityEvent<int>{}
[Serializable] public class MoveRightInputCancelled : UnityEvent<int>{}
[Serializable] public class MoveLeftInputStarted : UnityEvent<int>{}
[Serializable] public class MoveLeftInputPerformed : UnityEvent<int>{}
[Serializable] public class MoveLeftInputCancelled : UnityEvent<int>{}
[Serializable] public class MoveUpInputStarted : UnityEvent<int>{}
[Serializable] public class MoveUpInputPerformed : UnityEvent<int>{}
[Serializable] public class MoveUpInputCancelled : UnityEvent<int>{}


public class InputSettings : MonoBehaviour
{
    //CREATE NEW EVENTS 
    [SerializeField] private MoveRightInputStarted _moveRightInputStarted;
    [SerializeField] private MoveRightInputPerformed _moveRightInputPerformed;
    [SerializeField] private MoveRightInputCancelled _moveRightInputCancelled;
    [SerializeField] private MoveLeftInputStarted _moveLeftInputStarted;
    [SerializeField] private MoveLeftInputPerformed _moveLeftInputPerformed;
    [SerializeField] private MoveLeftInputCancelled _moveLeftInputCancelled;
    [SerializeField] private MoveUpInputStarted _moveUpInputStarted;
    [SerializeField] private MoveUpInputPerformed _moveUpInputPerformed;
    [SerializeField] private MoveUpInputCancelled _moveUpInputCancelled;
    
    private PlayerKeyMap _playerKeyMap; //NEW PLAYER KEY MAP VAR
    private void Awake() => _playerKeyMap = new PlayerKeyMap(); //INSTANTIATE THE NEW PLAYER KEY MAP VAR
    
    private void OnEnable() //ENABLE ACCESS TO PLAYERKEYMAP VAR AND SUBSCRIBE TO EVENT LISTENING
    {
        _playerKeyMap.Enable();
        //RIGHT INPUT
        _playerKeyMap.OnGround.MoveRight.started += GetMovingRightStarted;
        _playerKeyMap.OnGround.MoveRight.performed += GetMovingRightPerformed;
        _playerKeyMap.OnGround.MoveRight.canceled += GetMovingRightCancelled;
        //LEFT INPUT
        _playerKeyMap.OnGround.MoveLeft.started += GetMovingLeftStarted;
        _playerKeyMap.OnGround.MoveLeft.performed += GetMovingLeftPerformed;
        _playerKeyMap.OnGround.MoveLeft.canceled += GetMovingLeftCancelled;
        //UP INPUT
        _playerKeyMap.OnGround.Jump.started += GetMovingUpStarted;
        _playerKeyMap.OnGround.Jump.performed += GetMovingUpPerformed;
        _playerKeyMap.OnGround.Jump.canceled += GetMovingUpCancelled;
        //DOWN INPUT

    }
    
    private void OnDisable() //DISABLE ACCESS TO PLAYERKEYMAP VAR AND UNSUBSCRIBE TO EVENT LISTENING
    {
        _playerKeyMap.Disable();
        //RIGHT INPUT
        _playerKeyMap.OnGround.MoveRight.started -= GetMovingRightStarted;
        _playerKeyMap.OnGround.MoveRight.performed -= GetMovingRightPerformed;
        _playerKeyMap.OnGround.MoveRight.canceled -= GetMovingRightCancelled;
        //LEFT INPUT
        _playerKeyMap.OnGround.MoveLeft.started -= GetMovingLeftStarted;
        _playerKeyMap.OnGround.MoveLeft.performed -= GetMovingLeftPerformed;
        _playerKeyMap.OnGround.MoveLeft.canceled -= GetMovingLeftCancelled;
        //UP INPUT
        _playerKeyMap.OnGround.Jump.started -= GetMovingUpStarted;
        _playerKeyMap.OnGround.Jump.performed -= GetMovingUpPerformed;
        _playerKeyMap.OnGround.Jump.canceled -= GetMovingUpCancelled;
        //DOWN INPUT
        
    }

    //GENERIC CONVERTER
    private int FloatToInt(InputAction.CallbackContext context) => (int)context.ReadValue<float>();
    

    //RIGHT INPUT ACTION INVOKER
    private void GetMovingRightStarted(InputAction.CallbackContext context) => _moveRightInputStarted.Invoke(FloatToInt(context));
    private void GetMovingRightPerformed(InputAction.CallbackContext context) => _moveRightInputPerformed.Invoke(FloatToInt(context));
    private void GetMovingRightCancelled(InputAction.CallbackContext context) => _moveRightInputCancelled.Invoke(FloatToInt(context));
    
    //LEFT INPUT ACTION INVOKER
    private void GetMovingLeftStarted(InputAction.CallbackContext context) => _moveLeftInputStarted.Invoke(FloatToInt(context));
    private void GetMovingLeftPerformed(InputAction.CallbackContext context) => _moveLeftInputPerformed.Invoke(FloatToInt(context));
    private void GetMovingLeftCancelled(InputAction.CallbackContext context) => _moveLeftInputCancelled.Invoke(FloatToInt(context));
    
    //UP INPUT ACTION INVOKER
    private void GetMovingUpStarted(InputAction.CallbackContext context) => _moveUpInputStarted.Invoke(FloatToInt(context));
    private void GetMovingUpPerformed(InputAction.CallbackContext context) => _moveUpInputPerformed.Invoke(FloatToInt(context));
    private void GetMovingUpCancelled(InputAction.CallbackContext context) => _moveUpInputCancelled.Invoke(FloatToInt(context));
    
    //DOWN INPUT ACTION INVOKER
    
    //TODO(JT) Add new invokers
    
    
    
    
    
    //OLD
    

    //protected Vector2 GetMoving() => LockPlayer ? Vector2.zero : _playerKeyMap.OnGround.Move.ReadValue<Vector2>();
    //protected bool GetJumpInput() => !LockPlayer && _playerKeyMap.OnGround.Jump.ReadValue<float>() != 0; //RETURN FLOAT

    //protected bool GetMovingDown() => !LockPlayer && _playerKeyMap.OnGround.Jump.ReadValue<float>() != 0; //(TODO) Create new input asset with S key

    // protected bool GetStrafeInput() => !LockPlayer && Input.GetKeyDown(KeyCode.LeftShift);
    // protected bool GetEscape() => !LockPlayer && Input.GetKeyDown(KeyCode.Escape);
    /* protected Vector3 GetMousePos()
     {
         if (LockMouse) return Vector3.zero;
         
         var mousePos = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 10));
         return mousePos;
     }*/
}
