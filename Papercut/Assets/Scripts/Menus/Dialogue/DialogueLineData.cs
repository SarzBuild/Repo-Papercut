using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "newLine", menuName = "Data/Dialogue/Line")]
public class DialogueLineData : ScriptableObject
{
    [Header("Text Options")]
    [TextArea] [SerializeField] public string Input;

    [Header("Time Parameters")]
    [SerializeField] public float Delay;
    [SerializeField] public float DelayBeforeNextLine;
    
    [Header("Character Image")]
    [SerializeField] public Sprite CharacterSprite;
}
