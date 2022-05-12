using System;
using UnityEngine;

public enum SceneType
{
    MainMenu, Game, Credits
}

public class SoundtrackStarter : MonoBehaviour
{
    public SceneType SceneType;
    private void Start()
    {
        switch (SceneType)
        {
            case SceneType.MainMenu:
            {
                GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.StartTitleMusic, gameObject);
                break;
            }
            case SceneType.Game:
            {
                GenericManager.CallStateChange(GenericManager.Instance.SoundEventData.BaseMusicLow);
                GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.StartInGameMusic, gameObject);
                GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.StartAtmosphere, gameObject);
                break;
            }
            case SceneType.Credits:
            {
                GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.StartTitleMusic, gameObject);
                break;
            }
        }
    }

    public void StartMidMusic()
    {
        GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.ChangeZone, gameObject);
        GenericManager.CallStateChange(GenericManager.Instance.SoundEventData.BaseMusicMedium);
    }

    public void StartHighMusic()
    {
        GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.ChangeZone, gameObject);
        GenericManager.CallStateChange(GenericManager.Instance.SoundEventData.BaseMusicHigh);
    }
}
