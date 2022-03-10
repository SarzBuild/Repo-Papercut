using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SimplePlayerUI : MonoBehaviour
{
    public HealthComponent PlayerHealth;
    private float _tempHealth;
    private float _maxHealth;
    public Image HealthImage;
    

    private void Awake()
    {
        if (PlayerHealth == null)
        {
            Debug.LogError(string.Format("There is no health component {0} set to {1}",PlayerHealth.name,name));
        }
    }

    private void Update()
    {
        UpdateHealthAmount();
    }

    private void UpdateHealthAmount()
    {
        if (_tempHealth == PlayerHealth.CurrentHealth) return;
        
        HealthImage.fillAmount = Mathf.Clamp01(Mathf.InverseLerp(0,PlayerHealth.Settings.MaxHealth, PlayerHealth.CurrentHealth));
        _tempHealth = PlayerHealth.CurrentHealth;
    }
}
