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
[Serializable] public class RunInput : UnityEvent<int>{}
[Serializable] public class LMouseInput : UnityEvent<int>{}
[Serializable] public class RMouseInput : UnityEvent<int>{}
[Serializable] public class InteractionInput : UnityEvent<int>{}
[Serializable] public class DashInput : UnityEvent<int>{}

public class InputSettings : MonoBehaviour
{
    //[SerializeField] [TextArea] private string Description;
    
    //CREATE NEW EVENTS 
    [SerializeField] private MoveRightInput _moveRightInput;
    [SerializeField] private MoveLeftInput _moveLeftInput;
    [SerializeField] private MoveUpInput _moveUpInput;
    [SerializeField] private MoveDownInput _moveDownInput;
    [SerializeField] private RunInput _runInput;
    [SerializeField] private LMouseInput _lMouseInput;
    [SerializeField] private RMouseInput _rMouseInput;
    [SerializeField] private InteractionInput _interactionInput;
    [SerializeField] private DashInput _dashInput;

    private PlayerKeyMap _playerKeyMap; //NEW PLAYER KEY MAP VAR

    private void Awake() { _playerKeyMap = new PlayerKeyMap(); } //INSTANTIATE THE NEW PLAYER KEY MAP VAR

    private void OnEnable() //ENABLE ACCESS TO PLAYERKEYMAP VAR AND SUBSCRIBE TO EVENT LISTENING
    {
        _playerKeyMap.Enable();
        //RIGHT INPUT
        _playerKeyMap.Player.MoveRight.started += GetMovingRightStarted;
        _playerKeyMap.Player.MoveRight.performed += GetMovingRightPerformed;
        _playerKeyMap.Player.MoveRight.canceled += GetMovingRightCancelled;
        //LEFT INPUT
        _playerKeyMap.Player.MoveLeft.started += GetMovingLeftStarted;
        _playerKeyMap.Player.MoveLeft.performed += GetMovingLeftPerformed;
        _playerKeyMap.Player.MoveLeft.canceled += GetMovingLeftCancelled;
        //UP INPUT
        _playerKeyMap.Player.Jump.started += GetMovingUpStarted;
        _playerKeyMap.Player.Jump.performed += GetMovingUpPerformed;
        _playerKeyMap.Player.Jump.canceled += GetMovingUpCancelled;
        //DOWN INPUT
        _playerKeyMap.Player.MoveDown.started += GetMovingDownStarted;
        _playerKeyMap.Player.MoveDown.performed += GetMovingDownPerformed;
        _playerKeyMap.Player.MoveDown.canceled += GetMovingDownCancelled;
        //LEFT MOUSE INPUT
        _playerKeyMap.Player.LMouse.started += GetLMouseStarted;
        _playerKeyMap.Player.LMouse.performed += GetLMousePerformed;
        _playerKeyMap.Player.LMouse.canceled += GetLMouseCanceled;
        //RIGHT MOUSE INPUT
        _playerKeyMap.Player.RMouse.started += GetRMouseStarted;
        _playerKeyMap.Player.RMouse.performed += GetRMousePerformed;
        _playerKeyMap.Player.RMouse.canceled += GetRMouseCanceled;
        //INTERACTION INPUT
        _playerKeyMap.Player.Interaction.started += GetInteractionStarted;
        _playerKeyMap.Player.Interaction.performed += GetInteractionPerformed;
        _playerKeyMap.Player.Interaction.canceled += GetInteractionCanceled;
        //DASH INPUT
        _playerKeyMap.Player.Dash.started += GetDashStarted;
        _playerKeyMap.Player.Dash.performed += GetDashPerformed;
        _playerKeyMap.Player.Dash.canceled += GetDashCanceled;
        
    }
    
    private void OnDisable() //DISABLE ACCESS TO PLAYERKEYMAP VAR AND UNSUBSCRIBE TO EVENT LISTENING
    {
        _playerKeyMap.Disable();
        //RIGHT INPUT
        _playerKeyMap.Player.MoveRight.started -= GetMovingRightStarted;
        _playerKeyMap.Player.MoveRight.performed -= GetMovingRightPerformed;
        _playerKeyMap.Player.MoveRight.canceled -= GetMovingRightCancelled;
        //LEFT INPUT
        _playerKeyMap.Player.MoveLeft.started -= GetMovingLeftStarted;
        _playerKeyMap.Player.MoveLeft.performed -= GetMovingLeftPerformed;
        _playerKeyMap.Player.MoveLeft.canceled -= GetMovingLeftCancelled;
        //UP INPUT
        _playerKeyMap.Player.Jump.started -= GetMovingUpStarted;
        _playerKeyMap.Player.Jump.performed -= GetMovingUpPerformed;
        _playerKeyMap.Player.Jump.canceled -= GetMovingUpCancelled;
        //DOWN INPUT
        _playerKeyMap.Player.MoveDown.started -= GetMovingDownStarted;
        _playerKeyMap.Player.MoveDown.performed -= GetMovingDownPerformed;
        _playerKeyMap.Player.MoveDown.canceled -= GetMovingDownCancelled; 
        //LEFT MOUSE INPUT
        _playerKeyMap.Player.LMouse.started -= GetLMouseStarted;
        _playerKeyMap.Player.LMouse.performed -= GetLMousePerformed;
        _playerKeyMap.Player.LMouse.canceled -= GetLMouseCanceled;
        //RIGHT MOUSE INPUT
        _playerKeyMap.Player.RMouse.started -= GetRMouseStarted;
        _playerKeyMap.Player.RMouse.performed -= GetRMousePerformed;
        _playerKeyMap.Player.RMouse.canceled -= GetRMouseCanceled;
        //INTERACTION INPUT
        _playerKeyMap.Player.Interaction.started -= GetInteractionStarted;
        _playerKeyMap.Player.Interaction.performed -= GetInteractionPerformed;
        _playerKeyMap.Player.Interaction.canceled -= GetInteractionCanceled;
        //DASH RIGHT INPUT
        _playerKeyMap.Player.Dash.started -= GetDashStarted;
        _playerKeyMap.Player.Dash.performed -= GetDashPerformed;
        _playerKeyMap.Player.Dash.canceled -= GetDashCanceled;
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
    
    //DASH LEFT INPUT ACTION INVOKER
    private void GetDashStarted(InputAction.CallbackContext context) => _dashInput.Invoke(FloatToInt(context));
    private void GetDashPerformed(InputAction.CallbackContext context) => _dashInput.Invoke(FloatToInt(context) + 1);
    private void GetDashCanceled(InputAction.CallbackContext context) => _dashInput.Invoke(FloatToInt(context));
    
}
