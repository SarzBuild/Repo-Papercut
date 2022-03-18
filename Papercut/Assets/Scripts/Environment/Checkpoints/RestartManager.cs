using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RestartManager : MonoBehaviour
{
    public CheckpointManager CheckpointManager;
    private Player _player;
    private TrailRenderer _trailRenderer;
    public SimplePlayerUI SimplePlayerUI;
    public AbilityListManager AbilityListManager;

    private void Start()
    {
        _player = Player.Instance;
        _trailRenderer = _player.transform.GetComponent<TrailRenderer>();
    }

    public void RestartLoop()
    {
        SimplePlayerUI.DisableDeathMenu(); //Visual effect that return the player in game
        
        AbilityListManager.RespawnPickup();
        AbilityListManager.ClearList();
        
        CheckpointManager.OnRestart(_player.transform); //TPs the player at last checkpoint
        
        _player.HealthComponent.ResetDeath();
        _player.HealthComponent.SetHealth(_player.HealthComponent.Settings.MaxHealth); //Reset player health

        _player.InputHandler.LockPlayerInputs(false); //Enable the inputs for the player
        _player.InputHandler.LockMouseInputs(false);
        
        Time.timeScale = 1; //Set the game speed to normal

        _trailRenderer.Clear(); //Re-enable deactivated components 
    }
}
