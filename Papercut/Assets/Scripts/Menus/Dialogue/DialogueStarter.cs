using System.Collections.Generic;
using UnityEngine;

public class DialogueStarter : MonoBehaviour
{
    public List<DialogueLineData> DialogueSequence = new List<DialogueLineData>();
    public DialogueManager DialogueManager;
    
    public void InitiateDialogue()
    {
        StartCoroutine(DialogueManager.DialogueSequence(DialogueSequence));
    }  
}
