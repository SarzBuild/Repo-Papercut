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
[Serializable] public class MoveDownInputStarted : UnityEvent<int>{}
[Serializable] public class MoveDownInputPerformed : UnityEvent<int>{}
[Serializable] public class MoveDownInputCancelled : UnityEvent<int>{}
[Serializable] public class MoveSlideInputStarted : UnityEvent<int>{}
[Serializable] public class MoveSlideInputPerformed : UnityEvent<int>{}

[Serializable] public class MoveSlideInputCancelled : UnityEvent<int>{}


public class InputSettings : MonoBehaviour
{
    //[SerializeField] [TextArea] private string Description;
    
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
    [SerializeField] private MoveDownInputStarted _moveDownInputStarted;
    [SerializeField] private MoveDownInputPerformed _moveDownInputPerformed;
    [SerializeField] private MoveDownInputCancelled _moveDownInputCancelled;
    [SerializeField] private MoveSlideInputStarted _moveSlideInputStarted;
    [SerializeField] private MoveSlideInputPerformed _moveSlideInputPerformed;
    [SerializeField] private MoveSlideInputCancelled _moveSlideInputCancelled;
    
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
        _playerKeyMap.OnGround.MoveDown.started += GetMovingDownStarted;
        _playerKeyMap.OnGround.MoveDown.performed += GetMovingDownPerformed;
        _playerKeyMap.OnGround.MoveDown.canceled += GetMovingDownCancelled;
        //SLIDE INPUT
        _playerKeyMap.OnGround.Slide.started += GetSlideStarted;
        _playerKeyMap.OnGround.Slide.performed += GetSlidePerformed;
        _playerKeyMap.OnGround.Slide.canceled += GetSlideCancelled;

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
        _playerKeyMap.OnGround.MoveDown.started -= GetMovingDownStarted;
        _playerKeyMap.OnGround.MoveDown.performed -= GetMovingDownPerformed;
        _playerKeyMap.OnGround.MoveDown.canceled -= GetMovingDownCancelled;
        //SLIDE INPUT
        _playerKeyMap.OnGround.Slide.started -= GetSlideStarted;
        _playerKeyMap.OnGround.Slide.performed -= GetSlidePerformed;
        _playerKeyMap.OnGround.Slide.canceled -= GetSlideCancelled;
        
    }

    //GENERIC CONVERTER
    private int FloatToInt(InputAction.CallbackContext context) => (int)context.ReadValue<float>();
    

    //RIGHT INPUT ACTION INVOKER
    private void GetMovingRightStarted(InputAction.CallbackContext context) => _moveRightInputStarted.Invoke(FloatToInt(context));
    private void GetMovingRightPerformed(InputAction.CallbackContext context) => _moveRightInputPerformed.Invoke(FloatToInt(context) + 1);
    private void GetMovingRightCancelled(InputAction.CallbackContext context) => _moveRightInputCancelled.Invoke(FloatToInt(context));
    
    //LEFT INPUT ACTION INVOKER
    private void GetMovingLeftStarted(InputAction.CallbackContext context) => _moveLeftInputStarted.Invoke(FloatToInt(context));
    private void GetMovingLeftPerformed(InputAction.CallbackContext context) => _moveLeftInputPerformed.Invoke(FloatToInt(context) + 1);
    private void GetMovingLeftCancelled(InputAction.CallbackContext context) => _moveLeftInputCancelled.Invoke(FloatToInt(context));
    
    //UP INPUT ACTION INVOKER
    private void GetMovingUpStarted(InputAction.CallbackContext context) => _moveUpInputStarted.Invoke(FloatToInt(context));
    private void GetMovingUpPerformed(InputAction.CallbackContext context) => _moveUpInputPerformed.Invoke(FloatToInt(context) + 1);
    private void GetMovingUpCancelled(InputAction.CallbackContext context) => _moveUpInputCancelled.Invoke(FloatToInt(context));
    
    //DOWN INPUT ACTION INVOKER
    private void GetMovingDownStarted(InputAction.CallbackContext context) => _moveDownInputStarted.Invoke(FloatToInt(context));
    private void GetMovingDownPerformed(InputAction.CallbackContext context) => _moveDownInputPerformed.Invoke(FloatToInt(context) + 1);
    private void GetMovingDownCancelled(InputAction.CallbackContext context) => _moveDownInputCancelled.Invoke(FloatToInt(context));

    //SLIDE INPUT ACTION INVOKER
    private void GetSlideStarted(InputAction.CallbackContext context) => _moveSlideInputStarted.Invoke(FloatToInt(context));
    private void GetSlidePerformed(InputAction.CallbackContext context) => _moveSlideInputPerformed.Invoke(FloatToInt(context) + 1);
    private void GetSlideCancelled(InputAction.CallbackContext context) => _moveSlideInputCancelled.Invoke(FloatToInt(context));

    //TODO(JT) Add new invokers
    
}
