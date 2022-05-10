using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SimplePlayerUI : MonoBehaviour
{
    private Player _player;

    //public HealthComponent PlayerHealth;
    private float _tempHealth;
    private float _maxHealth;
    public Image HealthImage;

    public GameObject BackgroundImage;
    private Image _backgroundImage;
    public GameObject RestartUI;
    public GameObject ReturnButton;

    public Image DashFillImage;
    public Image DashFillBackground;
    public GameObject DashParent;

    private bool _coroutineRunning;

    public bool Active;

    private float _timer;

    private void Awake()
    {
        _backgroundImage = BackgroundImage.GetComponent<Image>();
        GenericManager.FadeOut(_backgroundImage, 0.25f, true);
    }

    private void Start()
    {
        _player = Player.Instance;
    }

    private void Update()
    {
        UpdateHealthAmount();
        UpdateDashFill();
        if (!RestartUI.activeSelf && Input.GetKeyDown(KeyCode.Escape))
        {
            EnableDeathMenu();
        }
        else if (RestartUI.activeSelf && Input.GetKeyDown(KeyCode.Escape) && !_player.HealthComponent.IsDead)
        {
            DisableDeathMenu();
        }
    }

    private void UpdateHealthAmount()
    {
        if (_tempHealth == _player.HealthComponent.CurrentHealth) return;

        HealthImage.fillAmount = Mathf.Clamp01(Mathf.InverseLerp(0, _player.HealthComponent.Settings.MaxHealth,
            _player.HealthComponent.CurrentHealth));
        _tempHealth = _player.HealthComponent.CurrentHealth;
    }

    private float timer;
    private bool _fading;

    private void UpdateDashFill()
    {
        var fillamount = _player.PlayerData.DashCooldownTime - _player.DashCooldownTimer;

        if (_player.PlayerData.DashCooldownTime != _player.DashCooldownTimer && !DashParent.activeSelf)
        {
            GenericManager.FadeIn(DashFillImage, 0f, true);
            DashParent.SetActive(true);
        }

        if (_player.PlayerData.DashCooldownTime == _player.DashCooldownTimer && DashParent.activeSelf)
        {
            timer += Time.fixedDeltaTime;
            if (timer > 0.8f)
            {
                GenericManager.FadeOut(DashFillImage, 0.5f, true);
                GenericManager.FadeOut(DashFillBackground,0.5f,true);
                if(!_coroutineRunning) StartCoroutine(DeactivateAfterTimeAmount(DashParent,false,0.5f));
                timer = 0;
            }
            return;
        }
        DashFillImage.fillAmount = Mathf.Clamp01(Mathf.InverseLerp(0, _player.PlayerData.DashCooldownTime, fillamount));
        DashFillImage.color = Color.Lerp(Color.red, Color.green,
            Mathf.Clamp01(Mathf.InverseLerp(0, _player.PlayerData.DashCooldownTime, fillamount)));
    }

    private IEnumerator DeactivateAfterTimeAmount(GameObject parent, bool toggle, float time)
    {
        _coroutineRunning = true;
        yield return new WaitForSeconds(time);
        parent.SetActive(toggle);
        _coroutineRunning = false;
    }
    
    public void EnableDeathMenu()
    {
        RestartUI.SetActive(true);
        GenericManager.FadeIn(_backgroundImage,0.25f,true);
        ToggleButton(ReturnButton,true);
        Time.timeScale = 0f;
    }

    public void DisableDeathMenu()
    {
        GenericManager.FadeOut(_backgroundImage,0.25f,true);
        ToggleButton(ReturnButton,false);
        RestartUI.SetActive(false);
        Time.timeScale = 1f;
    }

    private void ToggleButton(GameObject button, bool toggle)
    {
        if(_player.HealthComponent.IsDead) return; 
        button.SetActive(toggle);
    }
}
