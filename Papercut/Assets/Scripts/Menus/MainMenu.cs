using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;
using Sequence = DG.Tweening;

public class MainMenu : MonoBehaviour
{
    enum MenuState {MainState, OptionsState, ControlsState};
    MenuState CurrentMenuState;

    public bool DevBuild;

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

    public Image ControlsImage;
    private bool ControlImageIsFaded = false;

    public Text ControlsText;
    Color ControlsTextStartColour;
    public Text BackText;
    Color BackTextStartColour;
    public Text StartText;
    public Text QuitText;
    public Text OptionsText;

    private List<AsyncOperation> _scenesToLoad = new List<AsyncOperation>();
    public GameObject BlackLoadingScreen;
    public Image LoadingScreenLoadingBar;
    public GameObject BaseMenu;
    
    private void Start()
    {
        if(DevBuild) SceneManager.LoadSceneAsync("Settings",LoadSceneMode.Additive);
        Time.timeScale = 1;
        OptionsButton.transform.position = new Vector3(560f, 2000f, 0);
        StartButton.transform.position = new Vector3(960f, 2000f, 0);
        QuitButton.transform.position = new Vector3(1360f, 2000f, 0);
        BackTextStartColour = BackText.color;
        ControlsTextStartColour = ControlsText.color;
        BackTextStartColour.a = 0f;
        ControlsTextStartColour.a = 0f;
        BackText.color = BackTextStartColour;
        ControlsText.color = ControlsTextStartColour;
        VolumeObject.SetActive(false);
        BlackLoadingScreen.SetActive(false);

        OptionsButton.transform.DOMoveY(640f, 1f);
        StartButton.transform.DOMoveY(540f, 1.5f);
        QuitButton.transform.DOMoveY(440f, 2f);
    }

    public void OnStartButton()
    {
        if(CurrentMenuState == MenuState.MainState)
        {
            _scenesToLoad.Add(SceneManager.LoadSceneAsync("RoomTriggers"));
            _scenesToLoad.Add(SceneManager.LoadSceneAsync("Room_001",LoadSceneMode.Additive));
            if(DevBuild) _scenesToLoad.Add(SceneManager.LoadSceneAsync("Settings",LoadSceneMode.Additive));
            BaseMenu.SetActive(false);
            BlackLoadingScreen.SetActive(true);
            StartCoroutine(LoadingScreen());
        }
        else if(CurrentMenuState == MenuState.OptionsState)
        {
            OnControlsButtons();
        }
    }

    private IEnumerator LoadingScreen()
    {
        var progress = 0f;
        for (int i = 0; i < _scenesToLoad.Count; ++i)
        {
            while (!_scenesToLoad[i].isDone)
            {
                progress += _scenesToLoad[i].progress;
                LoadingScreenLoadingBar.fillAmount = progress / _scenesToLoad.Count;
                yield return null;
            }
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
            //Debug.Log("FadeToSpeeder");
            //var MySequence = DOTween.Sequence();
            //MySequence.Append(ControlsImage.DOFade(0f, 0.5f));
            ControlsImage.DOKill();
            ControlsImage.DOFade(0f, 0.5f).OnComplete(MoveSpidersBack);
            /*GenericManager.FadeOut(ControlsImage, 1f, true);
            OptionsButton.transform.DOMoveX(560f, 0.5f);
            StartButton.transform.DOMoveX(960f, 0.5f);
            QuitButton.transform.DOMoveX(1360f, 0.5f);*/
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
        OptionsButton.transform.DOMoveX(100f, 0.5f);
        StartButton.transform.DOMoveX(300f, 0.5f);
        QuitButton.transform.DOMoveX(500f, 0.5f).OnComplete(ControlImageOn);
    }

    private void ImageFlip()
    {
        if(CurrentMenuState == MenuState.OptionsState)
        {
            OptionsImage.transform.DORotate(new Vector3(0, 180, 0), 0.5f);
            StartImage.transform.DORotate(new Vector3(0, 180, 0), 0.5f);
            QuitImage.transform.DORotate(new Vector3(0, 180, 0), 0.5f).OnComplete(TextAppear);
        }
        else if(CurrentMenuState == MenuState.MainState)
        {
            VolumeObject.SetActive(false);
            OptionsImage.transform.DORotate(new Vector3(0, 0, 0), 0.5f);
            StartImage.transform.DORotate(new Vector3(0, 0, 0), 0.5f);
            QuitImage.transform.DORotate(new Vector3(0, 0, 0), 0.5f).OnComplete(TextAppear);
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

    private void ControlImageOn()
    {
        if(CurrentMenuState == MenuState.ControlsState)
        {
            //Debug.Log("FadeToDonke");
            ControlsImage.DOKill();
            ControlsImage.DOFade(1f, 1f);
            //ControlImageIsFaded = false;
            //GenericManager.FadeIn(ControlsImage, 1f, true);
        }
    }

    private void MoveSpidersBack()
    {
        OptionsButton.transform.DOMoveX(560f, 0.5f);
        StartButton.transform.DOMoveX(960f, 0.5f);
        QuitButton.transform.DOMoveX(1360f, 0.5f);
    }

}
