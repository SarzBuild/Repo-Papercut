using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class TextWriter
{
    public bool LineFinished { get; private set; }
    private bool _keyDown;
    
    public IEnumerator InputStringToText(TextMeshProUGUI holder, string input, float delay, float nextLineDelay)
    {
        yield return null; //Make sure that the last input is not on the same frame

        while (!_keyDown && holder.text != input)
        {
            for (int i = 0; i < input.Length; i++)
            {
                holder.text += input[i];

                if (_keyDown) { break; } //If key is pressed, stop the loop

                yield return WaitForKeyPressOrSeconds(KeyCode.Mouse0,delay); 
            }
        }
        holder.text = input; //Set the text to input if the player skips the dialogue
        
        yield return null; //Make sure that the next input is not on the same frame

        float timer = 0;
        while (!Input.GetKeyDown(KeyCode.Mouse0) && timer < nextLineDelay) //Wait until one of the two trigger happens to continue
        {
            timer += Time.fixedDeltaTime; 
            yield return null;
        }
        LineFinished = true;
    }
    
    private IEnumerator WaitForKeyPressOrSeconds(KeyCode key, float delay)
    {
        bool done = false;
        float timer = 0;
        while(!done)
        {
            if (Input.GetKeyDown(key)) //If key pressed, change variable to true and finish the loop
            {
                _keyDown = true;
                done = true;
            }
            
            if(timer > delay) //If time reaches the delay, finish the loop
            {
                done = true; 
            }

            timer += Time.fixedDeltaTime;

            yield return null;
        }
    }
}
