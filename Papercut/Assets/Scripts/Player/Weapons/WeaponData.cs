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
    public float CooldownSec = 1f;
    public float Damage = 1f;
    public bool UsesAmmo = false;
    public float DefaultAmmo = 0f;
    public float AmmoPerFire = 1f;
    public float MaxAmmo = 0f;

    // If empty, any states can fire unless excluded in StatesCannotFire.
    public List<PlayerStateId> StatesCanFire = new List<PlayerStateId>();

    public List<PlayerStateId> StatesCannotFire = new List<PlayerStateId>();

    [Header("FX")]
    public AudioClip EquippedSound;
    public float EquippedSoundVolume = 1f;
    public AudioClip StoredAwaySound;
    public float StoredAwaySoundVolume = 1f;
    public AudioClip FiredSound;
    public float FiredSoundVolume = 1f;
    public AudioClip AddedToInventorySound;
    public float AddedToInventorySoundVolume = 1f;
}
