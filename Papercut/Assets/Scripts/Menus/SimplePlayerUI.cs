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
    
    public GameObject BackgroundImage;
    private Image _backgroundImage;
    public GameObject RestartUI;
    
    
    private void Awake()
    {
        if (PlayerHealth == null)
        {
            Debug.LogError(string.Format("There is no health component {0} set to {1}",PlayerHealth.name,name));
        }
        
        _backgroundImage = BackgroundImage.GetComponent<Image>();
        GenericManager.FadeOut(_backgroundImage,0.25f,true);
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

    public void EnableDeathMenu()
    {
        RestartUI.SetActive(true);
        GenericManager.FadeIn(_backgroundImage,0.25f,true);
    }

    public void DisableDeathMenu()
    {
        GenericManager.FadeOut(_backgroundImage,0.25f,true);
        RestartUI.SetActive(false);
    }
}
