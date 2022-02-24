using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "newWeaponData", menuName = "Data/Weapon/WeaponData")]
public class WeaponData : ScriptableObject
{
    [FormerlySerializedAs("Description")]
    [TextArea] public string description;

    [Header("Settings")]
    // Seconds allowed between Fire().
    public float FireCooldownSec = 1f;

    // If true, an animation event for needs to trigger OnFireAnimationEnd().
    // It can be created on the animation timeline.
    // If false, only AttackCooldownSec is used.
    public bool FireWaitForAnimationToFinishEvent = false;

    // Damage the weapon does to a target.
    public float Damage = 1f;

    // If true, considers ammo ammounts before Fire() can occur.
    public bool UsesAmmo = false;
    public float DefaultAmmo = 0f;
    public float AmmoPerFire = 1f;
    public float MaxAmmo = 0f;

    // If empty, any states can Fire() unless excluded in StatesCannotFire.
    public List<PlayerStateId> StatesCanFire = new List<PlayerStateId>();

    public List<PlayerStateId> StatesCannotFire = new List<PlayerStateId>();

    [Header("FX")]
    // If sounds are empty, then they will not play.
    public AudioClip EquippedSound;
    public float EquippedSoundVolume = 1f;
    public AudioClip StoredAwaySound;
    public float StoredAwaySoundVolume = 1f;
    public AudioClip FiredSound;
    public float FiredSoundVolume = 1f;
    public AudioClip AddedToInventorySound;
    public float AddedToInventorySoundVolume = 1f;
}
