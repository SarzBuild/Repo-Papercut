using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckpointManager : MonoBehaviour
{
    public Vector2 LastCheckpointReached;
    public AbilityListManager AbilityListManager;
    public List<Checkpoint> Checkpoints = new List<Checkpoint>();

    private void OnEnable()
    {
        if (Checkpoints.Count < 1)
        {
            Debug.LogError(string.Format("{0} list is empty!",Checkpoints));   
            return;
        }
        
        foreach (var checkpoint in Checkpoints)
        {
            checkpoint.CheckpointManager = this;
        }
    }

    public void UpdateCheckpoint(Vector3 checkpointPos)
    {
        LastCheckpointReached = checkpointPos;
        AbilityListManager.ClearList();
    }

    public void OnRestart(Transform player)
    {
        player.position = LastCheckpointReached;
    }   
    
}
