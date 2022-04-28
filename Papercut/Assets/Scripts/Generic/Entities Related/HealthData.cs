using UnityEngine;
using UnityEngine.Serialization;

[CreateAssetMenu(fileName = "newHealthData", menuName = "Data/Generic/Health")]
public class HealthData : ScriptableObject
{
    [FormerlySerializedAs("Description")]
    [TextArea] public string description;

    [Header("Settings")]
    public float MaxHealth = 100.0f;

    public float DefaultHealth = 100.0f;

    // Number of pips to split MaxHealth across.
    public int DefaultPipSplits = 3;

    public bool CanDie = true;

    public bool CanTakeDamage = true;

    // Determines how regen health works.
    public enum RegenMode
    {
        Disabled = 0,
        Normal, // Health heals to max.
        ToNearestPip // If health == pip floor, nothing happens. If health > current pip floor, goes to next pip floor.
    }

    public RegenMode Regen = RegenMode.ToNearestPip;

    public float SecondsToRegen = 5f;

    public float SecondsAfterNoDamageToRegen = 5f;
}