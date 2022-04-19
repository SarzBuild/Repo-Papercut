using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TextWriter : MonoBehaviour
{
    public bool LineFinished { get; private set; }
    public IEnumerator InputStringToText(TextMeshProUGUI holder, string input, float delay)
    {
        for (int i = 0; i < input.Length; i++)
        {
            holder.text += input[i];   
            yield return new WaitForSeconds(delay);
        }
        
        yield return new WaitWhile(() => Input.GetMouseButtonDown(0));
        LineFinished = true;
    }
}
