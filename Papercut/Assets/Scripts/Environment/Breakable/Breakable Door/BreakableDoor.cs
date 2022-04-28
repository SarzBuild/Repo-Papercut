using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakableDoor : MonoBehaviour
{
    public HealthComponent HealthComponent;
    public Animator Animator;
    public Collider2D Collider2D;
    
    private void OnEnable()
    {
        if(Animator == null) Animator = GetComponent<Animator>();
        if (Collider2D == null) Collider2D = GetComponent<Collider2D>();
        HealthComponent.OnDeath += OnDeath;
    }

    private void OnDisable()
    {
        HealthComponent.OnDeath -= OnDeath;
    }

    private void OnDeath(HealthComponent args, GameObject killer)
    {
        Animator.SetBool("broken", true);
        Collider2D.enabled = false;
    }
}
