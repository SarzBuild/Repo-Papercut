using System;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Health information.
/// Can be added to players, enemies, anything! Provide <see cref="HealthData"/> scriptable object with settings.
/// </summary>
public class HealthComponent : MonoBehaviour
{
    public HealthData Settings;

    public float CurrentHealth { get; private set; } = 0.0f;

    public float CurrentPips { get; private set; } = 0.0f;

    public bool IsDead { get; private set; } = false;

    public bool IsRegeneratingHealth { get; private set; } = false;

    // Event triggered when Regen starts, provides health component.
    public event Action<HealthComponent> OnRegenTriggered;

    // Event triggered when Regen stops after completion, provides health component.
    public event Action<HealthComponent> OnRegenFinished;

    // Event triggers when Health is added, provides health component and amount of health given.
    public event Action<HealthComponent, float> OnHealthAdded;

    // Event triggers when damage is taken, provides health component and amount of damage taken.
    public event Action<HealthComponent, float> OnDamageTaken;

    // Event triggers when health falls below zeor, providers health component and OPTIONALLY gameobject "killer" - CAN BE NULL!
    public event Action<HealthComponent, GameObject> OnDeath;

    // Start is called before the first frame update
    void Start()
    {
        Initialize();
    }

    void Update()
    {
        UpdateRegenState();
    }

    private void UpdateRegenState()
    {
        if (m_LastTimeTakenDamageRegenHandled || Settings.Regen == HealthData.RegenMode.Disabled)
        {
            return;
        }

        if (IsRegeneratingHealth)
        {
            // If health was added since regen started, skip if no longer need to regen.
            if (CurrentHealth < m_RegenTargetHealth)
            {
                // calculate the amount of time that has passed.
                float timeSinceRegenTriggeredSec = Time.time - m_LastTimeSinceRegenTriggeredSec;
                float lerpTime = timeSinceRegenTriggeredSec / Settings.SecondsToRegen;

                // Lerp time will be a fraction of how much time is needed to complete the regen
                // It should be between 0 and 1 but clamp it anyway to be safe.
                float lerp = Mathf.Lerp(CurrentHealth, m_RegenTargetHealth, Mathf.Clamp01(lerpTime));
                AddHealth(lerp - CurrentHealth);
            }

            // REPEAT condition - if CurrentHealth has changed it needs to be re-evaluated.
            if (CurrentHealth >= m_RegenTargetHealth)
            {
                m_LastTimeTakenDamageRegenHandled = true;
                IsRegeneratingHealth = false;
                OnRegenFinished?.Invoke(this);
            }
        }
        else if(m_LastTimeTakenDamageSec > 0.0f)
        {
            float timeSinceDamageSec = Time.time - m_LastTimeTakenDamageSec;
            if (timeSinceDamageSec >= Settings.SecondsAfterNoDamageToRegen)
            {
                TriggerHealthRegen();
            }
        }
    }

    public void SetRegenMode(HealthData.RegenMode mode)
    {
        Settings.Regen = mode;
        ResetRegen();
    }


    public void SetHealth(float newHealth)
    {
        if (newHealth > Settings.MaxHealth)
        {
            Debug.LogWarning(string.Format("Attempted to set larger than max health {0} from {1}", Settings.MaxHealth, newHealth));
            newHealth = Settings.MaxHealth;
        }

        CurrentHealth = newHealth;
        RefreshCurrentPips();
        ResetRegen();
    }

    public void SetMaxHealth(float newMaxHealth)
    {
        Settings.MaxHealth = newMaxHealth;
        m_HealthPerPip = Settings.MaxHealth / Settings.DefaultPipSplits;
        if (CurrentHealth < Settings.MaxHealth)
        {
            Debug.LogWarning(string.Format("Attempted to set smaller max health {0} than current health {1}", Settings.MaxHealth, CurrentHealth));
            SetHealth(newMaxHealth);
        }
        else
        {
            RefreshCurrentPips();
        }

        ResetRegen();
    }

    public void TriggerHealthRegen()
    {
        if (IsDead || Settings.Regen == HealthData.RegenMode.Disabled)
        {
            return;
        }

        float targetHealth = Settings.MaxHealth;
        if (Settings.Regen == HealthData.RegenMode.ToNearestPip)
        {
            if (CurrentHealth % m_HealthPerPip == 0)
            {
                return;
            }

            if (CurrentHealth > m_HealthPerPip)
            {
                targetHealth = (Mathf.FloorToInt(CurrentPips) + 1) * m_HealthPerPip;
            }
            else
            {
                targetHealth = m_HealthPerPip;
            }

            if (targetHealth > Settings.MaxHealth)
            {
                targetHealth = Settings.MaxHealth;
            }
        }

        ResetRegen();
        m_RegenTargetHealth = targetHealth;
        m_LastTimeSinceRegenTriggeredSec = Time.time;
        IsRegeneratingHealth = true;
        OnRegenTriggered?.Invoke(this);
    }

    public void AddHealth(float addedHealth)
    {
        if (addedHealth <= 0.0f || CurrentHealth == Settings.MaxHealth || IsDead)
        {
            return;
        }

        float newHealth = CurrentHealth + addedHealth;
        if (newHealth > Settings.MaxHealth)
        {
            newHealth = Settings.MaxHealth;
            addedHealth = Settings.MaxHealth - CurrentHealth;
        }

        CurrentHealth = newHealth;
        RefreshCurrentPips();
        OnHealthAdded?.Invoke(this, addedHealth);
    }

    /// <summary>
    /// Health is hit by provided damage amount.
    /// </summary>
    /// <param name="damageAmmount"></param>
    /// <param name="damageSource">Who provides the damage, can be null.</param>
    public void DealDamage(float damageAmmount, GameObject damageSource = null)
    {
        if (IsDead || damageAmmount <= 0.0f || CurrentHealth == 0.0f || !Settings.CanTakeDamage)
        {
            return;
        }

        float newHealth = CurrentHealth - damageAmmount;
        if (newHealth < 0.0f)
        {
            newHealth = 0.0f;
            damageAmmount = CurrentHealth;
        }

        SetHealth(newHealth);
        m_LastTimeTakenDamageSec = Time.time;
        OnDamageTaken?.Invoke(this, damageAmmount);

        if (Settings.CanDie && CurrentHealth <= 0.0f)
        {
            IsDead = true;
            OnDeath?.Invoke(this, damageSource);
        }
    }

    private void RefreshCurrentPips()
    {
        CurrentPips = CurrentHealth / m_HealthPerPip;
    }

    private void Initialize()
    {
        if (Settings.DefaultHealth > Settings.MaxHealth)
        {
            Debug.LogError(string.Format("GameObject {0} has Max Health {1} that is less than DefaultHealth {2}", gameObject.name, Settings.MaxHealth, Settings.DefaultHealth));
        }

        CurrentHealth = Settings.DefaultHealth;
        m_HealthPerPip = Settings.MaxHealth / Settings.DefaultPipSplits;
        RefreshCurrentPips();
    }

    private void ResetRegen()
    {
        m_RegenTargetHealth = 0.0f;
        m_LastTimeSinceRegenTriggeredSec = 0.0f;
        m_LastTimeTakenDamageRegenHandled = false;
        IsRegeneratingHealth = false;
    }

    private float m_HealthPerPip = 0.0f;
    private float m_LastTimeTakenDamageSec = 0.0f;
    private float m_RegenTargetHealth = 0.0f;
    private float m_LastTimeSinceRegenTriggeredSec = 0.0f;
    private bool m_LastTimeTakenDamageRegenHandled = false;
}
