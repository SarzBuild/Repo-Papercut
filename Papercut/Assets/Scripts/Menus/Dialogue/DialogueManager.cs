using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    [SerializeField] public TextMeshProUGUI TextObjectHolder;
    [SerializeField] public GameObject DialogueMenu;
    [SerializeField] public Image ImageHolder;
    
    public IEnumerator DialogueSequence(List<DialogueLineData> currentDialogue)
    {
        var imageGameobject = ImageHolder.gameObject;
        
        ToggleObjects(new List<GameObject>(){DialogueMenu,imageGameobject},true);
        
        for (int i = 0; i < currentDialogue.Count; i++)
        {
            TextWriter writer = new TextWriter();
            ImageHolder.sprite = currentDialogue[i].CharacterSprite;
            StartCoroutine(writer.InputStringToText(TextObjectHolder, currentDialogue[i].Input, currentDialogue[i].Delay));
            yield return new WaitUntil(() => writer.LineFinished);
        }
        
        ToggleObjects(new List<GameObject>(){DialogueMenu,imageGameobject},false);
    }

    private void ToggleObjects(List<GameObject> toToggle, bool active)
    {
        for (int i = 0; i < toToggle.Count; i++)
        {
            toToggle[i].SetActive(active);
        }
    }
}
