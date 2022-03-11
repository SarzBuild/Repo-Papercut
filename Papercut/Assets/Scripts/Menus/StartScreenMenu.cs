using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class StartScreenMenu : MonoBehaviour
{
    private void Start()
    {
        SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive); //Change for Settings
    }
    
    public void StartGame()
    {
        SceneManager.LoadSceneAsync("RoomTriggers");
        SceneManager.LoadSceneAsync("Room_001", LoadSceneMode.Additive);
        SceneManager.LoadSceneAsync("Settings", LoadSceneMode.Additive);
    }

    public void ExitGame()
    {
        Application.Quit();
    }
}
