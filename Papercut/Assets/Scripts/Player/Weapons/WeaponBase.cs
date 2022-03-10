using UnityEngine;
using UnityEngine.Assertions;

/// <summary>
/// Weapon base class. The idea is to create a derived weapon class for your type of weapon, ie a sword or a gun.
/// By default, there are Settings scriptable object in <see cref="WeaponData"/> that this class taps into for functionality.
/// Every weapon should have an "Owner", being the player. When the weapon is given to a player, it is owned by that player gameobject.
/// This sets the weapon as a child of the Player owner gameobject in the transform heirarchy meaning it will follow the player around in the 'socket'
/// of the <see cref="Player.WeaponHoldPosition"/> property.
/// Firing is implemented functionally along with cooldowns and ammo, but the actual projectiles or 
/// damage from the weapon is up to the derived class to implement. <see cref="FireImplementation"/>
/// Callbacks for most events are present too. Animations/Sounds will trigger automatically if an Animator/SoundSource is present, but they're optional.
/// Everything can be overridden by the derived class for extra functionality or to ignore the base functionality, so have fun messing with it.
/// </summary>
public abstract class WeaponBase : MonoBehaviour
{
    public WeaponData Settings;

    public bool MuteAudio { get { return m_MuteAudio; } }

    public float CurrentAmmo { get; private set; }

    public Player Owner { get; private set; }

    public bool IsFiring { get; private set; }

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

    // Setting the Owner is important for weapons because it informs them of the player information
    // and will nest the gameObject under the Player's "handpos", in animation terms that's usually a 'socket'.
    public virtual void SetOwner(Player owner)
    {
        Assert.IsNotNull(owner, "SetOwner on weapon " + name + " is null.");
        Owner = owner;
        PostSetOwner();
    }

    // After owner is set, configure some things like the transform's parent and the audio source if one isn't available on the weapon.
    // Override this to do other stuff if you'd like.
    protected virtual void PostSetOwner()
    {
        if (Owner?.WeaponHoldPosition != null)
        {
            transform.SetParent(Owner.WeaponHoldPosition);
            transform.localPosition = Vector3.zero; // Resets the position of the object to 0 for consistency 
        }

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
            IsFiring = true;
            if (Settings.UsesAmmo)
            {
                CurrentAmmo -= Settings.AmmoPerFire;
            }

            m_LastFireTime = Time.time;
            PlayFireAnimation();
            PlayFiredSound();
            if (!m_FireAnimationOngoing)
            {
                IsFiring = false;
            }

            return true;
        }

        return false;
    }

    // Called presumably by an Animator's Animation Clip via the timeline editor on Unity.
    // This only matters when WeaponData settings has been configured to wait for the animation.
    public virtual void OnFireAnimationEnd()
    {
        m_FireAnimationOngoing = false;
        IsFiring = false;
    }

    // Checks if the weapon can Fire() based on settings.
    public virtual bool CanFire()
    {
        // Time cooldown check first.
        float nextFireTime = m_LastFireTime + Settings.FireCooldownSec;
        if (Time.time - nextFireTime > 0)
        {
            // Ammo check (if present)
            if (!Settings.UsesAmmo || 
                CurrentAmmo >= Settings.AmmoPerFire)
            {
                // Animation check (if present)
                if (Settings.FireWaitForAnimationToFinishEvent && m_FireAnimationOngoing)
                {
                    return false;
                }

                // Player states check (if present)
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

    // Checks player state IDs to see if it can fire.
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

    // Callback event for when a weapon is Equipped but is being unequipped.
    public virtual void OnStoringWeapon()
    {
        PlayStoredAwaySound();
        PlayUnequipAnimation();

        // todo this will make the unequip animation invisible.
        // May want the animation to trigger the unequip event, but then the weapon waiting to be equipped needs a callback to become active.
        gameObject.SetActive(false); 
    }

    // Callback event for when a weapon was not equipped but just became equipped.
    public virtual void OnEquippedWeapon()
    {
        gameObject.SetActive(true);
        PlayEquippedSound();
        PlayEquipAnimation();
    }

    // Callback event for when a weapon was added to WeaponsInventory, but may or may not become the equipped weapon.
    public virtual void OnAddedWeaponToInventory()
    {
        PlayAddedToInventorySound();
        gameObject.SetActive(false);
    }

    // Callback event for when a weapon is no longer in the WeaponsInventory.
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

    // Only plays sounds if sound is valid, audio source is valid, or if not muted.
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

    protected static string m_FireAnimTrigger = "Fire";
    protected virtual void PlayFireAnimation()
    {
        if (m_Animator)
        {
            m_Animator.SetTrigger(m_FireAnimTrigger);
            m_FireAnimationOngoing = true;
        }
        else
        {
            Assert.IsFalse(Settings.FireWaitForAnimationToFinishEvent, "Animator is not present but settings say to wait for fire animation to end before cooldown can reset.");
        }
    }

    private float m_LastFireTime = 0f;
    private bool m_FireAnimationOngoing = false;
}
