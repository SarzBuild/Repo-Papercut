using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.PlayerLoop;

public class Timer : MonoBehaviour
{
    public float time;

    public KeyCode StartAndStopKey = KeyCode.E;
    public KeyCode ResetTimeKey = KeyCode.R;
    
    private float _minTime = 0f;
    private bool _active;
    
    private void Update()
    {
        if (Input.GetKeyDown(StartAndStopKey))
        {
            ChangeTimerState();
        }

        if (Input.GetKeyDown(ResetTimeKey))
        {
            ResetTime();
        }
    }
    
    private void ChangeTimerState()
    {
        if(_active) Debug.Log(time);
        _active = !_active;
    }

    private void ResetTime()
    {
        time = _minTime;
    }

    private void FixedUpdate()
    {
        if(!_active) return;
        time += Time.fixedDeltaTime;
    }
}
