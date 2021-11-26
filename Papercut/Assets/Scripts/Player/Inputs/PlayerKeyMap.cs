// GENERATED AUTOMATICALLY FROM 'Assets/Scripts/Player/Inputs/PlayerKeyMapping.inputactions'

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
                },
                {
                    ""name"": ""MoveDown"",
                    ""type"": ""Button"",
                    ""id"": ""f187b8c8-be6a-4d7c-8005-f74b191c5e46"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Roll"",
                    ""type"": ""Button"",
                    ""id"": ""666ab8b1-6b88-4cb5-b003-dc656b42f630"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Run"",
                    ""type"": ""Button"",
                    ""id"": ""6c6f0e37-3683-4e37-a17e-ce352d9ff21e"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""LMouse"",
                    ""type"": ""Button"",
                    ""id"": ""ddf74d8b-3239-4436-bad0-1713473d27d2"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""RMouse"",
                    ""type"": ""Button"",
                    ""id"": ""7fb71016-e346-45c2-bb1d-a914715c5336"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""Interaction"",
                    ""type"": ""Button"",
                    ""id"": ""b35256c7-6f54-4a73-8205-f9ff12cf620c"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""DashRight"",
                    ""type"": ""PassThrough"",
                    ""id"": ""c83b1ff2-dda1-46a8-ac6a-eba271d5f7bd"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                },
                {
                    ""name"": ""DashLeft"",
                    ""type"": ""PassThrough"",
                    ""id"": ""20b47940-16ff-4007-b949-91495db2110f"",
                    ""expectedControlType"": ""Button"",
                    ""processors"": """",
                    ""interactions"": """"
                }
            ],
            ""bindings"": [
                {
                    ""name"": """",
                    ""id"": ""054daa73-aaad-4872-be39-480c28ff2f29"",
                    ""path"": ""<Keyboard>/space"",
                    ""interactions"": ""Hold(duration=0.05)"",
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
                    ""interactions"": ""Hold(duration=0.02)"",
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
                    ""interactions"": ""Hold(duration=0.02)"",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""MoveLeft"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""a1695889-2910-4cd2-baf3-3f1ce1a5b88a"",
                    ""path"": ""<Keyboard>/s"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""MoveDown"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""9d6b37d0-794c-4553-ba5f-7f514b39b25f"",
                    ""path"": ""<Keyboard>/leftShift"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Roll"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""da0d85e4-a91e-4714-a6d2-71b1b07574f2"",
                    ""path"": ""<Keyboard>/leftCtrl"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Run"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""137d5c87-022b-47ca-9e8b-192db1ec2e1b"",
                    ""path"": ""<Mouse>/leftButton"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""LMouse"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""74ede73c-485e-4dc9-aa6a-de19a6ebbd19"",
                    ""path"": ""<Mouse>/rightButton"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""RMouse"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""aad04a25-6897-4e88-87e8-2fba752a7859"",
                    ""path"": ""<Keyboard>/e"",
                    ""interactions"": """",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""Interaction"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""9300c89e-1f42-47bb-9a9f-2a503ecd0ead"",
                    ""path"": ""<Keyboard>/d"",
                    ""interactions"": ""MultiTap"",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""DashRight"",
                    ""isComposite"": false,
                    ""isPartOfComposite"": false
                },
                {
                    ""name"": """",
                    ""id"": ""30f60459-4022-4652-ba36-c0b58567343b"",
                    ""path"": ""<Keyboard>/a"",
                    ""interactions"": ""MultiTap"",
                    ""processors"": """",
                    ""groups"": """",
                    ""action"": ""DashLeft"",
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
        m_OnGround_Jump = m_OnGround.FindAction("Jump", throwIfNotFound: true);
        m_OnGround_MoveRight = m_OnGround.FindAction("MoveRight", throwIfNotFound: true);
        m_OnGround_MoveLeft = m_OnGround.FindAction("MoveLeft", throwIfNotFound: true);
        m_OnGround_MoveDown = m_OnGround.FindAction("MoveDown", throwIfNotFound: true);
        m_OnGround_Roll = m_OnGround.FindAction("Roll", throwIfNotFound: true);
        m_OnGround_Run = m_OnGround.FindAction("Run", throwIfNotFound: true);
        m_OnGround_LMouse = m_OnGround.FindAction("LMouse", throwIfNotFound: true);
        m_OnGround_RMouse = m_OnGround.FindAction("RMouse", throwIfNotFound: true);
        m_OnGround_Interaction = m_OnGround.FindAction("Interaction", throwIfNotFound: true);
        m_OnGround_DashRight = m_OnGround.FindAction("DashRight", throwIfNotFound: true);
        m_OnGround_DashLeft = m_OnGround.FindAction("DashLeft", throwIfNotFound: true);
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
    private readonly InputAction m_OnGround_Jump;
    private readonly InputAction m_OnGround_MoveRight;
    private readonly InputAction m_OnGround_MoveLeft;
    private readonly InputAction m_OnGround_MoveDown;
    private readonly InputAction m_OnGround_Roll;
    private readonly InputAction m_OnGround_Run;
    private readonly InputAction m_OnGround_LMouse;
    private readonly InputAction m_OnGround_RMouse;
    private readonly InputAction m_OnGround_Interaction;
    private readonly InputAction m_OnGround_DashRight;
    private readonly InputAction m_OnGround_DashLeft;
    public struct OnGroundActions
    {
        private @PlayerKeyMap m_Wrapper;
        public OnGroundActions(@PlayerKeyMap wrapper) { m_Wrapper = wrapper; }
        public InputAction @Jump => m_Wrapper.m_OnGround_Jump;
        public InputAction @MoveRight => m_Wrapper.m_OnGround_MoveRight;
        public InputAction @MoveLeft => m_Wrapper.m_OnGround_MoveLeft;
        public InputAction @MoveDown => m_Wrapper.m_OnGround_MoveDown;
        public InputAction @Roll => m_Wrapper.m_OnGround_Roll;
        public InputAction @Run => m_Wrapper.m_OnGround_Run;
        public InputAction @LMouse => m_Wrapper.m_OnGround_LMouse;
        public InputAction @RMouse => m_Wrapper.m_OnGround_RMouse;
        public InputAction @Interaction => m_Wrapper.m_OnGround_Interaction;
        public InputAction @DashRight => m_Wrapper.m_OnGround_DashRight;
        public InputAction @DashLeft => m_Wrapper.m_OnGround_DashLeft;
        public InputActionMap Get() { return m_Wrapper.m_OnGround; }
        public void Enable() { Get().Enable(); }
        public void Disable() { Get().Disable(); }
        public bool enabled => Get().enabled;
        public static implicit operator InputActionMap(OnGroundActions set) { return set.Get(); }
        public void SetCallbacks(IOnGroundActions instance)
        {
            if (m_Wrapper.m_OnGroundActionsCallbackInterface != null)
            {
                @Jump.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnJump;
                @Jump.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnJump;
                @Jump.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnJump;
                @MoveRight.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveRight;
                @MoveRight.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveRight;
                @MoveRight.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveRight;
                @MoveLeft.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveLeft;
                @MoveLeft.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveLeft;
                @MoveLeft.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveLeft;
                @MoveDown.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveDown;
                @MoveDown.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveDown;
                @MoveDown.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnMoveDown;
                @Roll.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRoll;
                @Roll.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRoll;
                @Roll.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRoll;
                @Run.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRun;
                @Run.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRun;
                @Run.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRun;
                @LMouse.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnLMouse;
                @LMouse.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnLMouse;
                @LMouse.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnLMouse;
                @RMouse.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRMouse;
                @RMouse.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRMouse;
                @RMouse.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnRMouse;
                @Interaction.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnInteraction;
                @Interaction.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnInteraction;
                @Interaction.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnInteraction;
                @DashRight.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnDashRight;
                @DashRight.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnDashRight;
                @DashRight.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnDashRight;
                @DashLeft.started -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnDashLeft;
                @DashLeft.performed -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnDashLeft;
                @DashLeft.canceled -= m_Wrapper.m_OnGroundActionsCallbackInterface.OnDashLeft;
            }
            m_Wrapper.m_OnGroundActionsCallbackInterface = instance;
            if (instance != null)
            {
                @Jump.started += instance.OnJump;
                @Jump.performed += instance.OnJump;
                @Jump.canceled += instance.OnJump;
                @MoveRight.started += instance.OnMoveRight;
                @MoveRight.performed += instance.OnMoveRight;
                @MoveRight.canceled += instance.OnMoveRight;
                @MoveLeft.started += instance.OnMoveLeft;
                @MoveLeft.performed += instance.OnMoveLeft;
                @MoveLeft.canceled += instance.OnMoveLeft;
                @MoveDown.started += instance.OnMoveDown;
                @MoveDown.performed += instance.OnMoveDown;
                @MoveDown.canceled += instance.OnMoveDown;
                @Roll.started += instance.OnRoll;
                @Roll.performed += instance.OnRoll;
                @Roll.canceled += instance.OnRoll;
                @Run.started += instance.OnRun;
                @Run.performed += instance.OnRun;
                @Run.canceled += instance.OnRun;
                @LMouse.started += instance.OnLMouse;
                @LMouse.performed += instance.OnLMouse;
                @LMouse.canceled += instance.OnLMouse;
                @RMouse.started += instance.OnRMouse;
                @RMouse.performed += instance.OnRMouse;
                @RMouse.canceled += instance.OnRMouse;
                @Interaction.started += instance.OnInteraction;
                @Interaction.performed += instance.OnInteraction;
                @Interaction.canceled += instance.OnInteraction;
                @DashRight.started += instance.OnDashRight;
                @DashRight.performed += instance.OnDashRight;
                @DashRight.canceled += instance.OnDashRight;
                @DashLeft.started += instance.OnDashLeft;
                @DashLeft.performed += instance.OnDashLeft;
                @DashLeft.canceled += instance.OnDashLeft;
            }
        }
    }
    public OnGroundActions @OnGround => new OnGroundActions(this);
    public interface IOnGroundActions
    {
        void OnJump(InputAction.CallbackContext context);
        void OnMoveRight(InputAction.CallbackContext context);
        void OnMoveLeft(InputAction.CallbackContext context);
        void OnMoveDown(InputAction.CallbackContext context);
        void OnRoll(InputAction.CallbackContext context);
        void OnRun(InputAction.CallbackContext context);
        void OnLMouse(InputAction.CallbackContext context);
        void OnRMouse(InputAction.CallbackContext context);
        void OnInteraction(InputAction.CallbackContext context);
        void OnDashRight(InputAction.CallbackContext context);
        void OnDashLeft(InputAction.CallbackContext context);
    }
}
