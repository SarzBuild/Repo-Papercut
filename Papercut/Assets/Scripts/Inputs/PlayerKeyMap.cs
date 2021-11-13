// GENERATED AUTOMATICALLY FROM 'Assets/Scripts/Inputs/PlayerKeyMapping.inputactions'

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Utilities;

public class @PlayerKeyMap : IInputActionCollection, IDisposable
{
    public InputActionAsset asset { get; }
    public @PlayerKeyMap()
    {
        asset = InputActionAsset.FromJson(@"{
    ""name"": ""PlayerKeyMapping"",
    ""maps"": [
        {
            ""name"": ""OnGround"",
            ""id"": ""da357e44-0313-42f5-a6c6-5f57c1c3310c"",
            ""actions"": [
                {
                    ""name"": ""Move"",
                    ""type"": ""PassThrough"",
                    ""id"": ""c2776d7e-acf7-4bc7-b249-a1ee562bcc7a"",
                    ""expectedControlType"": ""Vector2"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Jump"",
                    ""type"": ""Button"",
                    ""id"": ""d10b84df-c3e6-41da-981c-77b01ebbd102"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""MoveRight"",
                    ""type"": ""Button"",
                    ""id"": ""9dd80c04-94e7-433a-9656-2f5c1d8339ca"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""MoveLeft"",
                    ""type"": ""Button"",
                    ""id"": ""77489368-93cc-436f-8561-7a24ef951a0c"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": ""LeftRight"",
                    ""id"": ""3fe66d64-a94a-4494-b869-5bd862f2dfd4"",
                    ""path"": ""2DVector"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
                    ""isComposite"": true,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": ""Up"",
                    ""id"": ""b3e7f5b0-de9c-470f-8f86-42b69ebee133"",
                    ""path"": ""<Keyboard>/w"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Down"",
                    ""id"": ""41cad862-9e8e-420e-aa6f-3a7db15193f9"",
                    ""path"": ""<Keyboard>/s"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Left"",
                    ""id"": ""a4dcf807-c1a8-43dc-8fad-47efb2278e59"",
                    ""path"": ""<Keyboard>/a"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": ""Right"",
                    ""id"": ""b848a0be-fb41-44a9-b17d-f287820db5ed"",
                    ""path"": ""<Keyboard>/d"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Move"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": true
                },
                {
                    ""name"": """",
                    ""id"": ""054daa73-aaad-4872-be39-480c28ff2f29"",
                    ""path"": ""<Keyboard>/space"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Jump"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""59508c4a-bcea-4efa-bfa0-b356f67289a5"",
                    ""path"": ""<Keyboard>/d"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""MoveRight"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""d2163e01-95df-40a4-95b9-2aab0438af7e"",
                    ""path"": ""<Keyboard>/a"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""MoveLeft"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                }
            ]
        },
        {
            ""name"": ""MenuRelated"",
            ""id"": ""210dc2cf-7372-4253-98ab-bd4d0f5d1a76"",
            ""actions"": [
                {
                    ""name"": ""Escape"",
                    ""type"": ""Button"",
                    ""id"": ""b825ecc9-a947-4062-bbb0-93b62bdefa2d"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": """",
                    ""id"": ""74b73c7d-47dd-4500-9eee-99d53a59ddde"",
                    ""path"": ""<Keyboard>/escape"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Escape"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                }
            ]
        }
    ],
    ""controlSchemes"": []
}");
        // OnGround
        m_OnGround = asset.FindActionMap("OnGround", throwIfNotFound: true);
        m_OnGround_Move = m_OnGround.FindAction("Move", throwIfNotFound: true);
        m_OnGround_Jump = m_OnGround.FindAction("Jump", throwIfNotFound: true);
        m_OnGround_MoveRight = m_OnGround.FindAction("MoveRight", throwIfNotFound: true);
        m_OnGround_MoveLeft = m_OnGround.FindAction("MoveLeft", throwIfNotFound: true);
        // MenuRelated
        m_MenuRelated = asset.FindActionMap("MenuRelated", throwIfNotFound: true);
        m_MenuRelated_Escape = m_MenuRelated.FindAction("Escape", throwIfNotFound: true);
    }

    public void Dispose()
    {
        UnityEngine.Object.Destroy(asset);
    }

    public InputBinding? bindingMask
    {
        get => asset.bindingMask;
        set => asset.bindingMask = value;
    }

    public ReadOnlyArray<InputDevice>? devices
    {
        get => asset.devices;
        set => asset.devices = value;
    }

    public ReadOnlyArray<InputControlScheme> controlSchemes => asset.controlSchemes;

    public bool Contains(InputAction action)
    {
        return asset.Contains(action);
    }

    public IEnumerator<InputAction> GetEnumerator()
    {
        return asset.GetEnumerator();
    }

    IEnumerator IEnumerable.GetEnumerator()
    {
        return GetEnumerator();
    }

    public void Enable()
    {
        asset.Enable();
    }

    public void Disable()
    {
        asset.Disable();
    }

    // OnGround
    private readonly InputActionMap m_OnGround;
    private IOnGroundActions m_OnGroundActionsCallbackInterface;
    private readonly InputAction m_OnGround_Move;
    private readonly InputAction m_OnGround_Jump;
    private readonly InputAction m_OnGround_MoveRight;
    private readonly InputAction m_OnGround_MoveLeft;
    public struct OnGroundActions
    {
        private @PlayerKeyMap m_Wrapper;
        public OnGroundActions(@PlayerKeyMap wrapper) { m_Wrapper = wrapper; }
        public InputAction @Move => m_Wrapper.m_OnGround_Move;
        public InputAction @Jump => m_Wrapper.m_OnGround_Jump;
        public InputAction @MoveRight => m_Wrapper.m_OnGround_MoveRight;
        public InputAction @MoveLeft => m_Wrapper.m_OnGround_MoveLeft;
        public InputActionMap Get() { return m_Wrapper.m_OnGround; }
        public void Enable() { Get().Enable(); }
        public void Disable() { Get().Disable(); }
        public bool enabled => Get().enabled;
        public static implicit operator InputActionMap(OnGroundActions set) { return set.Get(); }
        public void SetCallbacks(IOnGroundActions instance)
        {
            if (m_Wrapper.m_OnGroundActionsCallbackInterface != null)
            {
                @Move.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMove;
                @Move.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMove;
                @Move.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMove;
                @Jump.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnJump;
                @Jump.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnJump;
                @Jump.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnJump;
                @MoveRight.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveRight;
                @MoveRight.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveRight;
                @MoveRight.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveRight;
                @MoveLeft.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveLeft;
                @MoveLeft.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveLeft;
                @MoveLeft.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveLeft;
            }
            m_Wrapper.m_OnGroundActionsCallbackInterface = instance;
            if (instance != null)
            {
                @Move.started += instance.OnMove;
                @Move.performed += instance.OnMove;
                @Move.canceled += instance.OnMove;
                @Jump.started += instance.OnJump;
                @Jump.performed += instance.OnJump;
                @Jump.canceled += instance.OnJump;
                @MoveRight.started += instance.OnMoveRight;
                @MoveRight.performed += instance.OnMoveRight;
                @MoveRight.canceled += instance.OnMoveRight;
                @MoveLeft.started += instance.OnMoveLeft;
                @MoveLeft.performed += instance.OnMoveLeft;
                @MoveLeft.canceled += instance.OnMoveLeft;
            }
        }
    }
    public OnGroundActions @OnGround => new OnGroundActions(this);

    // MenuRelated
    private readonly InputActionMap m_MenuRelated;
    private IMenuRelatedActions m_MenuRelatedActionsCallbackInterface;
    private readonly InputAction m_MenuRelated_Escape;
    public struct MenuRelatedActions
    {
        private @PlayerKeyMap m_Wrapper;
        public MenuRelatedActions(@PlayerKeyMap wrapper) { m_Wrapper = wrapper; }
        public InputAction @Escape => m_Wrapper.m_MenuRelated_Escape;
        public InputActionMap Get() { return m_Wrapper.m_MenuRelated; }
        public void Enable() { Get().Enable(); }
        public void Disable() { Get().Disable(); }
        public bool enabled => Get().enabled;
        public static implicit operator InputActionMap(MenuRelatedActions set) { return set.Get(); }
        public void SetCallbacks(IMenuRelatedActions instance)
        {
            if (m_Wrapper.m_MenuRelatedActionsCallbackInterface != null)
            {
                @Escape.started -= m_Wrapper.m_MenuRelatedActionsCallbackInterface.OnEscape;
                @Escape.performed -= m_Wrapper.m_MenuRelatedActionsCallbackInterface.OnEscape;
                @Escape.canceled -= m_Wrapper.m_MenuRelatedActionsCallbackInterface.OnEscape;
            }
            m_Wrapper.m_MenuRelatedActionsCallbackInterface = instance;
            if (instance != null)
            {
                @Escape.started += instance.OnEscape;
                @Escape.performed += instance.OnEscape;
                @Escape.canceled += instance.OnEscape;
            }
        }
    }
    public MenuRelatedActions @MenuRelated => new MenuRelatedActions(this);
    public interface IOnGroundActions
    {
        void OnMove(InputAction.CallbackContext context);
        void OnJump(InputAction.CallbackContext context);
        void OnMoveRight(InputAction.CallbackContext context);
        void OnMoveLeft(InputAction.CallbackContext context);
    }
    public interface IMenuRelatedActions
    {
        void OnEscape(InputAction.CallbackContext context);
    }
}
