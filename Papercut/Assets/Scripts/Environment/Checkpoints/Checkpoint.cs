using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoint : MonoBehaviour
{
    public float radius = 2.5f;
    public CheckpointManager CheckpointManager;

    /*private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.transform.gameObject.layer == GenericManager.PlayerLayerMask)
        {
            CheckpointManager.UpdateCheckpoint(transform.position);
        }
    }*/

    private void FixedUpdate()
    {
        var colliderArray = Physics2D.OverlapCircleAll(transform.position, radius);
        if (colliderArray.Length > 1)
        {
            foreach (var hit in colliderArray)
            {
                if (hit.transform.gameObject.layer == GenericManager.PlayerLayerMask)
                {
                    CheckpointManager.UpdateCheckpoint(transform.position);
                }
            }
        }
    }
}
