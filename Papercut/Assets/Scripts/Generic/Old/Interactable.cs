using UnityEngine;

public abstract class Interactable : MonoBehaviour
{
    public enum InteractionType
    {
        E,
        CLICK
    }

    public InteractionType interactionType;
    public abstract string GetDescription();
    public abstract void Interact();
    
}