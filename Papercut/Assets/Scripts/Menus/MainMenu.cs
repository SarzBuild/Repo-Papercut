using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;

public class MainMenu : MonoBehaviour
{
    enum MenuState {MainState, OptionsState, ControlsState};
    MenuState CurrentMenuState;

    public GameObject QuitButton;
    public GameObject StartButton;
    public GameObject OptionsButton;

    public GameObject QuitImage;
    public GameObject StartImage;
    public GameObject OptionsImage;

    public GameObject VolumeObject;
    public Image VolumeBackgroundImage;
    public Image VolumeFillImage;
    public Image VolumeHandleImage;

    public Text ControlsText;
    public Text BackText;
    public Text StartText;
    public Text QuitText;
    public Text OptionsText;

    //bool Isflipped = false;

    // Start is called before the first frame update
    void Start()
    {              
        OptionsButton.transform.position = new Vector3(660f, 2000f, 0);
        StartButton.transform.position = new Vector3(960f, 2000f, 0);
        QuitButton.transform.position = new Vector3(1260f, 2000f, 0);
        BackText.color = Color.clear;
        ControlsText.color = Color.clear;
        VolumeObject.SetActive(false);

        OptionsButton.transform.DOMoveY(640f, 1f);
        StartButton.transform.DOMoveY(540f, 1.5f);
        QuitButton.transform.DOMoveY(440f, 2f);
    }

    public void OnStartButton()
    {
        if(CurrentMenuState == MenuState.MainState)
        {
            SceneManager.LoadScene("RoomTriggers");
        }
        else if(CurrentMenuState == MenuState.OptionsState)
        {
            OnControlsButtons();
        }
    }
    public void OnQuitButton()
    {
        if(CurrentMenuState == MenuState.MainState)
        {
            Application.Quit();
        }
        else if(CurrentMenuState == MenuState.OptionsState)
        {
            CurrentMenuState = MenuState.MainState;
            ControlsText.DOFade(0f, 0.2f);
            VolumeBackgroundImage.DOFade(0f, 0.2f);
            VolumeFillImage.DOFade(0f, 0.2f);
            VolumeHandleImage.DOFade(0f, 0.2f);
            BackText.DOFade(0f, 0.2f).OnComplete(ImageFlip);
        }
        else if(CurrentMenuState == MenuState.ControlsState)
        {
            CurrentMenuState = MenuState.OptionsState;
            OptionsButton.transform.DOMoveX(660f, 0.2f);
            StartButton.transform.DOMoveX(960f, 0.2f);
            QuitButton.transform.DOMoveX(1260f, 0.2f);
        }
    }

    public void OnOptionsButton()
    {
        if(CurrentMenuState == MenuState.MainState)
        {
            CurrentMenuState = MenuState.OptionsState;
            StartText.DOFade(0f, 0.2f);
            QuitText.DOFade(0f, 0.2f);
            OptionsText.DOFade(0f, 0.2f).OnComplete(ImageFlip);
        }
    }

    private void OnControlsButtons()
    {
        CurrentMenuState = MenuState.ControlsState;
        OptionsButton.transform.DOMoveX(100f, 0.2f);
        StartButton.transform.DOMoveX(200f, 0.2f);
        QuitButton.transform.DOMoveX(300f, 0.2f);
    }

    private void ImageFlip()
    {
        if(CurrentMenuState == MenuState.OptionsState)
        {
            OptionsImage.transform.DORotate(new Vector3(0, 180, -90), 0.5f);
            StartImage.transform.DORotate(new Vector3(0, 180, -90), 0.5f);
            QuitImage.transform.DORotate(new Vector3(0, 180, -90), 0.5f).OnComplete(TextAppear);
        }
        else if(CurrentMenuState == MenuState.MainState)
        {
            VolumeObject.SetActive(false);
            OptionsImage.transform.DORotate(new Vector3(0, 0, -90), 0.5f);
            StartImage.transform.DORotate(new Vector3(0, 0, -90), 0.5f);
            QuitImage.transform.DORotate(new Vector3(0, 0, -90), 0.5f).OnComplete(TextAppear);
        }
    }

    private void TextAppear()
    {
        if (CurrentMenuState == MenuState.OptionsState)
        {
            ControlsText.DOFade(1f, 0.2f);
            BackText.DOFade(1f, 0.2f);
            VolumeObject.SetActive(true);
            VolumeBackgroundImage.DOFade(1f, 0.2f);
            VolumeFillImage.DOFade(1f, 0.2f);
            VolumeHandleImage.DOFade(1f, 0.2f);
        }
        else if(CurrentMenuState == MenuState.MainState)
        {
            StartText.DOFade(1f, 0.2f);
            QuitText.DOFade(1f, 0.2f);
            OptionsText.DOFade(1f, 0.2f);
        }
    }
}
