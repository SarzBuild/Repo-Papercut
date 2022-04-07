using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackTrigger : MonoBehaviour
{
    public GameObject Parent;
    public EnemyBase EnemyBase;
    public WeaponData WeaponData;
    public EnemyData EnemyData;

    private float _lastAttackTime;
    private float _cooldown;

    private Vector2 knockbackSpeed;

    public void Start() { gameObject.SetActive(false); }
    public void SetActive() { gameObject.SetActive(true); }
    public void SetKnockbackMultiplier(Vector2 knockbackMultiplier) { knockbackSpeed = knockbackMultiplier; }

    public void UpdateLastAttackTime(float time, float cooldown)
    {
        _lastAttackTime = time;
        _cooldown = cooldown;
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
        if (col)
        {
            if (col.gameObject.layer == GenericManager.PlayerLayerMask)
            {
                var healthComponent = col.GetComponent<HealthComponent>();
                if (healthComponent != null)
                {
                    healthComponent.DealDamage(WeaponData.Damage,Parent,knockbackSpeed);
                    EnemyData.HasTouchedPlayer = true;
                    gameObject.SetActive(false);
                } 
            }
            else if (col.gameObject.layer == GenericManager.GroundLayerMask)
            {
                gameObject.SetActive(false);
            }
        }
    } 
}
