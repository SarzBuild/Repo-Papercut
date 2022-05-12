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
                StopAllMusic();
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
                StopAllMusic();
                GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.StartTitleMusic, gameObject);
                break;
            }
        }
    }

    public void PlayHitSound()
    {
        GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.SwordHitSpider, gameObject);
    }

    public void PlayStinger()
    {
        GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.ChangeZone, gameObject);
    }

    public void StopAllMusic()
    {
        AkSoundEngine.StopAll();
    }

    public void StartEndSequenceMusic()
    {
        GenericManager.CallMusicEvent(GenericManager.Instance.SoundEventData.FinalSequence,gameObject);
    }

    public void StartMidMusic()
    {
        PlayStinger();
        GenericManager.CallStateChange(GenericManager.Instance.SoundEventData.BaseMusicMedium);
    }

    public void StartHighMusic()
    {
        PlayStinger();
        GenericManager.CallStateChange(GenericManager.Instance.SoundEventData.BaseMusicHigh);
    }
}
