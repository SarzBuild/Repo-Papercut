using System;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerControls : MonoBehaviour
{
    [SerializeField] protected bool LockPlayer;
    [SerializeField] protected bool LockMouse;
    private PlayerKeyMap _playerKeyMap;

    private void Awake() => _playerKeyMap = new PlayerKeyMap();
    private void OnEnable() => _playerKeyMap.Enable();
    private void OnDisable() => _playerKeyMap.Disable();

    private void Update()
    {
        Debug.Log(GetJumpInput());
    }

    protected Vector2 GetMoving() => LockPlayer ? Vector2.zero : _playerKeyMap.OnGround.Move.ReadValue<Vector2>();
    protected bool GetJumpInput() => !LockPlayer && _playerKeyMap.OnGround.Jump.ReadValue<float>() != 0; //RETURN FLOAT

    protected bool GetMovingDown() => !LockPlayer && _playerKeyMap.OnGround.Jump.ReadValue<float>() != 0; //(TODO) Create new input asset with S key

    // protected bool GetStrafeInput() => !LockPlayer && Input.GetKeyDown(KeyCode.LeftShift);
    // protected bool GetEscape() => !LockPlayer && Input.GetKeyDown(KeyCode.Escape);
    /* protected Vector3 GetMousePos()
     {
         if (LockMouse) return Vector3.zero;
         
         var mousePos = Camera.main.ScreenToWorldPoint(new Vector3(Input.mousePosition.x, Input.mousePosition.y, 10));
         return mousePos;
     }*/
}
