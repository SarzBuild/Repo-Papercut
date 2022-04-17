using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TextWriter : MonoBehaviour
{
    public bool LineFinished { get; private set; }

    private protected IEnumerator InputStringToText(string input, float delay)
    {
        for (int i = 0; i < input.Length; i++)
        {
            yield return new WaitForSeconds(delay);
        }

        yield return new WaitWhile(() => LineFinished);
        
    }
}
