using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    private void OnEnable() { transform.parent = null; }
    private void FixedUpdate() { transform.position += transform.right * Time.fixedDeltaTime * Speed; }

    public int DamageToDeal;
    public float Speed;
    private void OnCollisionEnter2D(Collision2D col)
    {
        if (col.gameObject.layer != LayerMask.NameToLayer("Enemy"))
        {
            if (col.gameObject.layer == LayerMask.NameToLayer("Player"))
            {
                var healthComponent = col.transform.GetComponent<HealthComponent>();
                if (healthComponent != null)
                {
                    healthComponent.DealDamage(DamageToDeal);
                }
            }
            Destroy(gameObject);
        }
    }
}
