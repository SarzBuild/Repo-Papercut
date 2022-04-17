using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SimpleMenu : MonoBehaviour
{
    [SerializeField] public GameObject Menu;
    [SerializeField] [HideInInspector] private bool _menuOpened;
    [SerializeField] private PlayerInputState _playerInputState;

    private void Start()
    {
        
    }


    void Update()
    {
        if(Input.GetKeyDown(KeyCode.Escape)) OpenMenu();
    }
    
    public void Main()
    {
        SceneManager.LoadScene("__main__");
    }
    public void LDGrey1()
    {
        SceneManager.LoadScene("LD_Level_Greybox");
    }
    public void LDGrey2()
    {
        SceneManager.LoadScene("LD_Level_Greyboxv2");
    }
    public void Metric()
    {
        SceneManager.LoadScene("LD_MetricsGym");
    }
    public void Sample()
    {
        SceneManager.LoadScene("SampleScene");
    }
    public void LookDev()
    {
        SceneManager.LoadScene("LookDevScene");
    }

    public void Exit()
    {
        Application.Quit();
    }
    
    private void OpenMenu()
    {
        if (_menuOpened)
        {
            Menu.SetActive(false);
            _menuOpened = false;
            return;
        }
        Menu.SetActive(true);
        _menuOpened = true;
    }
}
