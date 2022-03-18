using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakableDoor : MonoBehaviour
{
    public HealthComponent HealthComponent;

    private void OnEnable()
    {
        HealthComponent.OnDeath += OnDeath;
    }

    private void OnDisable()
    {
        HealthComponent.OnDeath -= OnDeath;
    }

    private void OnDeath(HealthComponent args, GameObject killer)
    {
        if (killer != null)
        {
            Debug.Log(string.Format("{0} killed by {1}", name, killer.name));
        }
        
        Destroy(gameObject);   
    }
}
