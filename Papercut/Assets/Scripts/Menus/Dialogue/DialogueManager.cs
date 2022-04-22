using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    [SerializeField] public GameObject DialogueMenuObject;
    [SerializeField] public TextMeshProUGUI TextHolder;
    [SerializeField] public Image ImageHolder;
    
    public IEnumerator DialogueSequence(List<DialogueLineData> currentDialogue)
    {
        var imageGameobject = ImageHolder.gameObject;
        
        ToggleObjects(new List<GameObject>(){DialogueMenuObject,imageGameobject},true);
        
        for (int i = 0; i < currentDialogue.Count; i++)
        {
            TextWriter writer = new TextWriter();
            
            ImageHolder.sprite = currentDialogue[i].CharacterSprite;
            
            StartCoroutine(writer.InputStringToText(TextHolder, currentDialogue[i].Input, currentDialogue[i].Delay, currentDialogue[i].DelayBeforeNextLine));
            
            
            yield return new WaitUntil(() => writer.LineFinished);
            TextHolder.text = "";
        }
        
        ToggleObjects(new List<GameObject>(){DialogueMenuObject,imageGameobject},false);
    }

    private void ToggleObjects(List<GameObject> toToggle, bool active)
    {
        for (int i = 0; i < toToggle.Count; i++)
        {
            toToggle[i].SetActive(active);
        }
    }
}
