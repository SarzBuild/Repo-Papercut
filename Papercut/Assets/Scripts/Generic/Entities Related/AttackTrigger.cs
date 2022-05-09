using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackTrigger : MonoBehaviour
{
    private GameObject _parent;
    private WeaponData _weaponData;
    
    private EnemyData _enemyData;
    private PlayerData _playerData;

    private float _lastAttackTime;
    private float _cooldown;

    private Vector2 _knockbackSpeed;

    public void InitializeEnemyProperties(GameObject parent, WeaponData weaponData, EnemyData enemyData, Vector2 knockbackMultiplier)
    {
        _enemyData = enemyData;
        InitializeProperties(parent,weaponData,knockbackMultiplier);
    }

    public void InitializePlayerProperties(GameObject parent, WeaponData weaponData, PlayerData playerData, Vector2 knockbackMultiplier)
    {
        _playerData = playerData;
        InitializeProperties(parent,weaponData,knockbackMultiplier);
    }

    private void InitializeProperties(GameObject parent, WeaponData weaponData, Vector2 knockbackMultiplier)
    {
        _parent = parent;
        _weaponData = weaponData;
        _cooldown = weaponData.FireCooldownSec;
        _knockbackSpeed = knockbackMultiplier;
    }

    public void Start()
    {
       Toggle(false);
    }

    public void SetActive()
    {
        Toggle(true);
        _lastAttackTime = Time.time;
    }

    public void Toggle(bool toggle)
    {
        gameObject.SetActive(toggle);
    }
    
    private void Update()
    {
        var nextFireTime = _lastAttackTime + _cooldown;
        if (Time.time - nextFireTime > 0)
        {
            gameObject.SetActive(false);
        }
    }
    
    private void OnTriggerEnter2D(Collider2D col)
    {
        if (!col) return;
        
        var targetLayer = col.gameObject.layer;
            
        if (_playerData != null)
        {
            if (CheckMatchingLayers(targetLayer, GenericManager.EnemyLayerMask))
            {
                ApplyDamage(col);
            }
            else if (CheckMatchingLayers(targetLayer, GenericManager.GuardEnemyLayerMask))
            {
                ApplyDamage(col);
            }
            else if(CheckMatchingLayers(targetLayer,GenericManager.ShieldLayerMask))
            {
                Toggle(false);
            }
            else if (CheckMatchingLayers(targetLayer, GenericManager.GroundLayerMask))
            {
                if (_playerData.CanBreakWalls)
                {
                    ApplyDamage(col);
                }
            }
        }

        if (_enemyData != null)
        {
            if (CheckMatchingLayers(targetLayer, GenericManager.PlayerLayerMask))
            {
                ApplyDamage(col);
                _enemyData.HasTouchedPlayer = true;
            }
            else if (CheckMatchingLayers(targetLayer, GenericManager.GroundLayerMask))
            {
                Toggle(false);
            }
        }
    }

    private void ApplyDamage(Collider2D col)
    {
        var healthComponent = col.GetComponent<HealthComponent>();
        if (healthComponent != null)
        {
            healthComponent.DealDamage(_weaponData.Damage, _parent, _knockbackSpeed);
            Toggle(false);
        }
    }

    private bool CheckMatchingLayers(int layer1, int layer2)
    {
        return layer1 == layer2;
    }
}
