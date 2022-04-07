using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackTrigger : MonoBehaviour
{
    public GameObject Parent;
    public EnemyBase EnemyBase;
    public WeaponData WeaponData;

    private float _lastAttackTime;

    public void Start() { gameObject.SetActive(false); }
    public void SetActive() { gameObject.SetActive(true); }
    public void UpdateLastAttackTime(float value) { _lastAttackTime = value; }
    
    private void Update()
    {
        /*if (EnemyBase.Grounded)
        {
            gameObject.SetActive(false);
        }*/

        var nextFireTime = _lastAttackTime + 2f;
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
                    healthComponent.DealDamage(WeaponData.Damage,Parent);
                    gameObject.SetActive(false);
                } 
            }
        }
    } 
}
