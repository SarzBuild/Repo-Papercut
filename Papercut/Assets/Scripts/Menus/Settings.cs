using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Settings : MonoBehaviour
{
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Keypad0))
        {
            SceneManager.LoadSceneAsync("StartScene");
        }
        
        if (Input.GetKeyDown(KeyCode.Keypad1))
        {
            SceneManager.LoadSceneAsync("Combat Gym");
            SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive);
        }
    
        if (Input.GetKeyDown(KeyCode.Keypad2))
        {
            SceneManager.LoadSceneAsync("Grappling Hook Gym");
            SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive);
        }
        
        if (Input.GetKeyDown(KeyCode.Keypad3))
        {
            SceneManager.LoadSceneAsync("Jumping Gym");
            SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive);
        }
        
        if (Input.GetKeyDown(KeyCode.Keypad4))
        {
            SceneManager.LoadSceneAsync("Walk & Run & Dash Gym");
            SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive);
        }
        
        if (Input.GetKeyDown(KeyCode.Keypad5))
        {
            SceneManager.LoadSceneAsync("LookDevScene");
            SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive);
        }
    }
}
