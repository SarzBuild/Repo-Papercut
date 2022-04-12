using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventTriggerZone : MonoBehaviour
{
    public GameEvent EventTriggered;
    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col)
        {
            if (col.gameObject.layer == GenericManager.PlayerLayerMask)
            {
                EventTriggered.Raise();
                AkSoundEngine.PostEvent("Cosmonaute", gameObject);
                gameObject.SetActive(false);
            }
        }
    }
}
