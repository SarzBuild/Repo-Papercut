using UnityEngine;

[CreateAssetMenu(fileName = "newSoundData", menuName = "Data/Sound")]
public class SoundEventData : ScriptableObject
{
    public AK.Wwise.Event ChangeZone;
    public AK.Wwise.Event Menu_BigClick;
    public AK.Wwise.Event Menu_SmallClick;
    public AK.Wwise.Event FinalSequence;
    public AK.Wwise.Event PlayerJump;
    public AK.Wwise.Event PlayerDeath;
    public AK.Wwise.Event StartAtmosphere;
    public AK.Wwise.Event StartInGameMusic;
    public AK.Wwise.Event StartTitleMusic;
    public AK.Wwise.Event StopAllMusic;
    public AK.Wwise.Event SwordHitShield;
    public AK.Wwise.Event SwordHitSpider;
    public AK.Wwise.Event SwordSwing;
    public AK.Wwise.State BaseMusicLow;
    public AK.Wwise.State BaseMusicMedium;
    public AK.Wwise.State BaseMusicHigh;
}
