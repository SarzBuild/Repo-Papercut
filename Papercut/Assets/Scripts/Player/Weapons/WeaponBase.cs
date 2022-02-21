using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Assertions;

public abstract class WeaponBase : MonoBehaviour
{
    public WeaponData Settings;

    public bool MuteAudio { get { return m_MuteAudio; } }

    public float CurrentAmmo { get; private set; }

    public Player Owner { get; private set; }

    // The audio source may be on the weapon itself, else it will automatically look for it in the Player gameobject when equipped.
    private AudioSource m_AudioSource;
    private Animator m_Animator;

    [SerializeField]
    private bool m_MuteAudio = false;
    private uint m_MuteAudioStacks = 0;
    private bool m_PreviousMuteAudioState;

    public void Awake()
    {
        if (Settings == null)
        {
            Assert.IsTrue(false, "Weapon settings is not present on GameObject " + name);
        }

        if (Settings.UsesAmmo)
        {
            CurrentAmmo = Settings.DefaultAmmo;
        }
        else
        {
            CurrentAmmo = 0;
        }

        m_AudioSource = GetComponent<AudioSource>();
        m_Animator = GetComponent<Animator>();
    }

    public virtual void SetOwner(Player owner)
    {
        Assert.IsNotNull(owner, "SetOwner on weapon " + name + " is null.");
        Owner = owner;
        PostSetOwner();
    }

    protected virtual void PostSetOwner()
    {
        transform.SetParent(Owner?.WeaponHoldPosition);
        if (m_AudioSource == null)
        {
            m_AudioSource = Owner.GetComponent<AudioSource>();
        }
    }

    // Returns true if ammo was given.
    public virtual bool GiveAmmo(float ammount)
    {
        if (!Settings.UsesAmmo || CurrentAmmo == Settings.MaxAmmo)
        {
            return false;
        }

        CurrentAmmo += ammount;
        if (CurrentAmmo > Settings.MaxAmmo)
        {
            CurrentAmmo = Settings.MaxAmmo;
        }

        return true;
    }

    // Returns true if weapon fired.
    public virtual bool Fire() 
    {
        if (!CanFire())
        {
            return false;
        }

        if (FireImplementation())
        {
            if (Settings.UsesAmmo)
            {
                CurrentAmmo -= Settings.AmmoPerFire;
            }

            m_LastFireTime = Time.time;
            PlayFiredSound();
            return true;
        }

        return false;
    }

    public virtual bool CanFire()
    {
        float nextFireTime = m_LastFireTime + Settings.CooldownSec;
        if (Time.time - nextFireTime > 0)
        {
            if (!Settings.UsesAmmo || 
                CurrentAmmo >= Settings.AmmoPerFire)
            {
                return CanFireInPlayerState();
            }
        }

        return false;
    }

    // Mutes the audio of a weapon temporarily until PopMuteAudio() is called.
    // Do not forget to call PopMuteAudio() when done.
    public void PushMuteAudio()
    {
        if (m_MuteAudioStacks == 0)
        {
            m_PreviousMuteAudioState = MuteAudio;
        }

        ++m_MuteAudioStacks;
        m_MuteAudio = true;
    }

    // Will restore the previous MuteAudio state prior to Push if this is the last Pop.
    public void PopMuteAudio()
    {
        Assert.IsTrue(m_MuteAudioStacks > 0, "Calling PopMuteAudio with no prior Pushes.");
        --m_MuteAudioStacks;
        if (m_MuteAudioStacks == 0)
        {
            m_MuteAudio = m_PreviousMuteAudioState;
        }
    }

    private bool CanFireInPlayerState()
    {
        if (Owner?.StateMachine?.CurrentState == null)
        {
            return true;
        }

        if (Settings.StatesCanFire.Count > 0)
        {
            return Settings.StatesCanFire.Contains(Owner.StateMachine.CurrentState.Id);
        }

        return !Settings.StatesCannotFire.Contains(Owner.StateMachine.CurrentState.Id);
    }

    public virtual void OnStoringWeapon()
    {
        PlayStoredAwaySound();
        PlayUnequipAnimation();

        // todo this will make the unequip animation invisible.
        // May want the animation to trigger the unequip event, but then the weapon waiting to be equipped needs a callback to become active.
        gameObject.SetActive(false); 
    }

    public virtual void OnEquippedWeapon()
    {
        gameObject.SetActive(true);
        PlayEquippedSound();
        PlayEquipAnimation();
    }

    public virtual void OnAddedWeaponToInventory()
    {
        PlayAddedToInventorySound();
        gameObject.SetActive(false);
    }

    public virtual void OnRemovedWeaponFromInventory()
    {
        PlayUnequipAnimation();
    }

    protected virtual void PlayFiredSound()
    {
        PlaySound(Settings.FiredSound, Settings.FiredSoundVolume);
    }

    protected virtual void PlayEquippedSound()
    {
        PlaySound(Settings.EquippedSound, Settings.EquippedSoundVolume);
    }

    protected virtual void PlayStoredAwaySound()
    {
        PlaySound(Settings.StoredAwaySound, Settings.StoredAwaySoundVolume);
    }

    protected virtual void PlayAddedToInventorySound()
    {
        PlaySound(Settings.AddedToInventorySound, Settings.AddedToInventorySoundVolume);
    }

    protected virtual void PlaySound(AudioClip sound, float volume = 1f)
    {
        if (sound != null && m_AudioSource != null && !MuteAudio)
        {
            m_AudioSource.PlayOneShot(sound, volume);
        }
    }

    // Returns true if actually fired weapon.
    protected abstract bool FireImplementation();

    protected static string m_EquippedAnimBool = "Equipped";
    protected virtual void PlayUnequipAnimation()
    {
        m_Animator?.SetBool(m_EquippedAnimBool, false);
    }

    protected virtual void PlayEquipAnimation()
    {
        m_Animator?.SetBool(m_EquippedAnimBool, true);
    }

    private float m_LastFireTime = 0f;
}
