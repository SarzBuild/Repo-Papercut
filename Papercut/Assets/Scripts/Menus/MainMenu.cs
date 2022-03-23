using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;

public class MainMenu : MonoBehaviour
{
    enum MenuState {MenuState, OptionsState, ControlsState};

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
    public Text BackToMenuText;
    public Text StartText;
    public Text QuitText;
    public Text OptionsText;

    bool Isflipped = false;

    // Start is called before the first frame update
    void Start()
    {              
        OptionsButton.transform.position = new Vector3(660f, 2000f, 0);
        StartButton.transform.position = new Vector3(960f, 2000f, 0);
        QuitButton.transform.position = new Vector3(1260f, 2000f, 0);
        BackToMenuText.color = Color.clear;
        ControlsText.color = Color.clear;
        VolumeObject.SetActive(false);

        OptionsButton.transform.DOMoveY(640f, 1f);
        StartButton.transform.DOMoveY(540f, 1.5f);
        QuitButton.transform.DOMoveY(440f, 2f);
    }

    public void OnStartButton()
    {
        if(!Isflipped)
        {
            SceneManager.LoadScene("RoomTriggers");
        }
        else
        {
            OnControlsButtons();
        }
    }
    public void OnQuitButton()
    {
        if(!Isflipped)
        {
            Application.Quit();
        }
        else
        {
            Isflipped = false;
            ControlsText.DOFade(0f, 0.2f);
            VolumeBackgroundImage.DOFade(0f, 0.2f);
            VolumeFillImage.DOFade(0f, 0.2f);
            VolumeHandleImage.DOFade(0f, 0.2f);
            BackToMenuText.DOFade(0f, 0.2f).OnComplete(ImageFlip);
        }
    }

    public void OnOptionsButton()
    {
        if(!Isflipped)
        {
            Isflipped = true;
            StartText.DOFade(0f, 0.2f);
            QuitText.DOFade(0f, 0.2f);
            OptionsText.DOFade(0f, 0.2f).OnComplete(ImageFlip);
        }
    }

    private void OnControlsButtons()
    {

    }

    private void ImageFlip()
    {
        if(Isflipped)
        {
            OptionsImage.transform.DORotate(new Vector3(0, 180, -90), 0.5f);
            StartImage.transform.DORotate(new Vector3(0, 180, -90), 0.5f);
            QuitImage.transform.DORotate(new Vector3(0, 180, -90), 0.5f).OnComplete(TextAppear);
        }
        else
        {
            VolumeObject.SetActive(false);
            OptionsImage.transform.DORotate(new Vector3(0, 0, -90), 0.5f);
            StartImage.transform.DORotate(new Vector3(0, 0, -90), 0.5f);
            QuitImage.transform.DORotate(new Vector3(0, 0, -90), 0.5f).OnComplete(TextAppear);
        }
    }

    private void TextAppear()
    {
        if (Isflipped)
        {
            ControlsText.DOFade(1f, 0.2f);
            BackToMenuText.DOFade(1f, 0.2f);
            VolumeObject.SetActive(true);
            VolumeBackgroundImage.DOFade(1f, 0.2f);
            VolumeFillImage.DOFade(1f, 0.2f);
            VolumeHandleImage.DOFade(1f, 0.2f);
        }
        else
        {
            StartText.DOFade(1f, 0.2f);
            QuitText.DOFade(1f, 0.2f);
            OptionsText.DOFade(1f, 0.2f);
        }
    }
}
