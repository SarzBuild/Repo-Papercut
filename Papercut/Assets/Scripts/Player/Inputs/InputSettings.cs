using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

//EVENTS
[Serializable] public class MoveRightInput : UnityEvent<int>{}
[Serializable] public class MoveLeftInput : UnityEvent<int>{}
[Serializable] public class MoveUpInput : UnityEvent<int>{}
[Serializable] public class MoveDownInput : UnityEvent<int>{}
[Serializable] public class MoveRollInput : UnityEvent<int>{}
[Serializable] public class RunInput : UnityEvent<int>{}
[Serializable] public class LMouseInput : UnityEvent<int>{}
[Serializable] public class RMouseInput : UnityEvent<int>{}
[Serializable] public class InteractionInput : UnityEvent<int>{}
[Serializable] public class DashRightInput : UnityEvent<int>{}
[Serializable] public class DashLeftInput : UnityEvent<int>{}

public class InputSettings : MonoBehaviour
{
    //[SerializeField] [TextArea] private string Description;
    
    //CREATE NEW EVENTS 
    [SerializeField] private MoveRightInput _moveRightInput;
    [SerializeField] private MoveLeftInput _moveLeftInput;
    [SerializeField] private MoveUpInput _moveUpInput;
    [SerializeField] private MoveDownInput _moveDownInput;
    [SerializeField] private MoveRollInput _moveRollInput;
    [SerializeField] private RunInput _runInput;
    [SerializeField] private LMouseInput _lMouseInput;
    [SerializeField] private RMouseInput _rMouseInput;
    [SerializeField] private InteractionInput _interactionInput;
    [SerializeField] private DashRightInput _dashRightInput;
    [SerializeField] private DashLeftInput _dashLeftInput;

    private PlayerKeyMap _playerKeyMap; //NEW PLAYER KEY MAP VAR

    private void Awake() { _playerKeyMap = new PlayerKeyMap(); } //INSTANTIATE THE NEW PLAYER KEY MAP VAR

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
        //ROLL INPUT
        _playerKeyMap.OnGround.Roll.started += GetRollStarted;
        _playerKeyMap.OnGround.Roll.performed += GetRollPerformed;
        _playerKeyMap.OnGround.Roll.canceled += GetRollCancelled;
        //RUN INPUT
        _playerKeyMap.OnGround.Run.started += GetRunStarted;
        _playerKeyMap.OnGround.Run.performed += GetRunPerformed;
        _playerKeyMap.OnGround.Run.canceled += GetRunCancelled;
        //LEFT MOUSE INPUT
        _playerKeyMap.OnGround.LMouse.started += GetLMouseStarted;
        _playerKeyMap.OnGround.LMouse.performed += GetLMousePerformed;
        _playerKeyMap.OnGround.LMouse.canceled += GetLMouseCanceled;
        //RIGHT MOUSE INPUT
        _playerKeyMap.OnGround.RMouse.started += GetRMouseStarted;
        _playerKeyMap.OnGround.RMouse.performed += GetRMousePerformed;
        _playerKeyMap.OnGround.RMouse.canceled += GetRMouseCanceled;
        //INTERACTION INPUT
        _playerKeyMap.OnGround.Interaction.started += GetInteractionStarted;
        _playerKeyMap.OnGround.Interaction.performed += GetInteractionPerformed;
        _playerKeyMap.OnGround.Interaction.canceled += GetInteractionCanceled;
        //DASH INPUT
        /*_playerKeyMap.OnGround.DashRight.started += GetDashRightStarted;
        _playerKeyMap.OnGround.DashRight.performed += GetDashRightPerformed;
        _playerKeyMap.OnGround.MoveRight.canceled += GetDashRightCanceled;*/
        
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
        //ROLL INPUT
        _playerKeyMap.OnGround.Roll.started -= GetRollStarted;
        _playerKeyMap.OnGround.Roll.performed -= GetRollPerformed;
        _playerKeyMap.OnGround.Roll.canceled -= GetRollCancelled;
        //RUN INPUT
        _playerKeyMap.OnGround.Run.started -= GetRunStarted;
        _playerKeyMap.OnGround.Run.performed -= GetRunPerformed;
        _playerKeyMap.OnGround.Run.canceled -= GetRunCancelled;
        //LEFT MOUSE INPUT
        _playerKeyMap.OnGround.LMouse.started -= GetLMouseStarted;
        _playerKeyMap.OnGround.LMouse.performed -= GetLMousePerformed;
        _playerKeyMap.OnGround.LMouse.canceled -= GetLMouseCanceled;
        //RIGHT MOUSE INPUT
        _playerKeyMap.OnGround.RMouse.started -= GetRMouseStarted;
        _playerKeyMap.OnGround.RMouse.performed -= GetRMousePerformed;
        _playerKeyMap.OnGround.RMouse.canceled -= GetRMouseCanceled;
        //INTERACTION INPUT
        _playerKeyMap.OnGround.Interaction.started -= GetInteractionStarted;
        _playerKeyMap.OnGround.Interaction.performed -= GetInteractionPerformed;
        _playerKeyMap.OnGround.Interaction.canceled -= GetInteractionCanceled;
        //DASH RIGHT INPUT
        /*_playerKeyMap.OnGround.DashRight.started -= GetDashRightStarted;
        _playerKeyMap.OnGround.DashRight.performed -= GetDashRightPerformed;
        _playerKeyMap.OnGround.MoveRight.canceled -= GetDashRightCanceled;;*/
    }

    //GENERIC CONVERTER
    private int FloatToInt(InputAction.CallbackContext context) => (int)context.ReadValue<float>();
    
    //RIGHT INPUT ACTION INVOKER
    private void GetMovingRightStarted(InputAction.CallbackContext context) => _moveRightInput.Invoke(FloatToInt(context));
    private void GetMovingRightPerformed(InputAction.CallbackContext context) => _moveRightInput.Invoke(FloatToInt(context) + 1);
    private void GetMovingRightCancelled(InputAction.CallbackContext context) => _moveRightInput.Invoke(FloatToInt(context));
    
    //LEFT INPUT ACTION INVOKER
    private void GetMovingLeftStarted(InputAction.CallbackContext context) => _moveLeftInput.Invoke(FloatToInt(context));
    private void GetMovingLeftPerformed(InputAction.CallbackContext context) => _moveLeftInput.Invoke(FloatToInt(context) + 1);
    private void GetMovingLeftCancelled(InputAction.CallbackContext context) => _moveLeftInput.Invoke(FloatToInt(context));
    
    //UP INPUT ACTION INVOKER
    private void GetMovingUpStarted(InputAction.CallbackContext context) => _moveUpInput.Invoke(FloatToInt(context));
    private void GetMovingUpPerformed(InputAction.CallbackContext context) => _moveUpInput.Invoke(FloatToInt(context) + 1);
    private void GetMovingUpCancelled(InputAction.CallbackContext context) => _moveUpInput.Invoke(FloatToInt(context));
    
    //DOWN INPUT ACTION INVOKER
    private void GetMovingDownStarted(InputAction.CallbackContext context) => _moveDownInput.Invoke(FloatToInt(context));
    private void GetMovingDownPerformed(InputAction.CallbackContext context) => _moveDownInput.Invoke(FloatToInt(context) + 1);
    private void GetMovingDownCancelled(InputAction.CallbackContext context) => _moveDownInput.Invoke(FloatToInt(context));

    //ROLL INPUT ACTION INVOKER
    private void GetRollStarted(InputAction.CallbackContext context) => _moveRollInput.Invoke(FloatToInt(context));
    private void GetRollPerformed(InputAction.CallbackContext context) => _moveRollInput.Invoke(FloatToInt(context) + 1);
    private void GetRollCancelled(InputAction.CallbackContext context) => _moveRollInput.Invoke(FloatToInt(context));
    
    //RUN INPUT ACTION INVOKER
    private void GetRunStarted(InputAction.CallbackContext context) => _runInput.Invoke(FloatToInt(context));
    private void GetRunPerformed(InputAction.CallbackContext context) => _runInput.Invoke(FloatToInt(context) + 1);
    private void GetRunCancelled(InputAction.CallbackContext context) => _runInput.Invoke(FloatToInt(context));
    //LEFT MOUSE INPUT ACTION INVOKER
    private void GetLMouseStarted(InputAction.CallbackContext context) => _lMouseInput.Invoke(FloatToInt(context));
    private void GetLMousePerformed(InputAction.CallbackContext context) => _lMouseInput.Invoke(FloatToInt(context) + 1);
    private void GetLMouseCanceled(InputAction.CallbackContext context) => _lMouseInput.Invoke(FloatToInt(context));
    //RIGHT MOUSE INPUT ACTION INVOKER
    private void GetRMouseStarted(InputAction.CallbackContext context) => _rMouseInput.Invoke(FloatToInt(context));
    private void GetRMousePerformed(InputAction.CallbackContext context) => _rMouseInput.Invoke(FloatToInt(context) + 1);
    private void GetRMouseCanceled(InputAction.CallbackContext context) => _rMouseInput.Invoke(FloatToInt(context));
    //INTERACTION INPUT ACTION INVOKER
    private void GetInteractionStarted(InputAction.CallbackContext context) => _interactionInput.Invoke(FloatToInt(context));
    private void GetInteractionPerformed(InputAction.CallbackContext context) => _interactionInput.Invoke(FloatToInt(context) + 1);
    private void GetInteractionCanceled(InputAction.CallbackContext context) => _interactionInput.Invoke(FloatToInt(context));
    
    /*//DASH LEFT INPUT ACTION INVOKER
    private void GetDashLeftStarted(InputAction.CallbackContext context) => _dashLeftInput.Invoke(FloatToInt(context));
    private void GetDashLeftPerformed(InputAction.CallbackContext context) => _dashLeftInput.Invoke(FloatToInt(context) + 1);
    private void GetDashLeftCanceled(InputAction.CallbackContext context) => _dashLeftInput.Invoke(FloatToInt(context));*/
}
