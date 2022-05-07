using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Abilities to set on Abilities Pickup
public enum AbilityType
{
    GrapplingHook,
    WallJump,
    WallSmash,
    Weapon
}

/// <summary>
/// This class works closely with <see cref="AbilityPickup"/>, <see cref="Checkpoint"/> and <see cref="CheckpointManager"/>.
/// The goal of this class is to toggle player's abilities and keep track of abilities gained before a new checkpoint has been reached.
/// <see cref="Abilities"/> contains all the abilities in game and whenever the game starts we pass along this class to each index in it.
/// <see cref="AbilityGainedBeforeNextCheckpoint"/> is whenever a new ability is obtained by the player. If the player doesn't reach a new checkpoint before they die,
/// we resets every ability in its former state. Whenever a player reaches a new checkpoint, we clear the list of its objects as we don't need to remove them anymore.
/// 
/// </summary>

public class AbilityListManager : MonoBehaviour
{
    public List<AbilityPickup> Abilities = new List<AbilityPickup>();
    public List<AbilityPickup> AbilityGainedBeforeNextCheckpoint = new List<AbilityPickup>();
    private Player _player;

    private void Start()
    {
        if (Abilities.Count < 1)
        {
            Debug.LogError(string.Format("{0} list has {1} elements!",this,Abilities.Count));   
            return;
        }
        
        foreach (var ability in Abilities)
        {
            ability.AbilityListManager = this;
        }
        
        _player = Player.Instance;
    }
    
    public void ClearList()
    {
        AbilityGainedBeforeNextCheckpoint.Clear();
    }

    public void RegisterToList(AbilityPickup ability)
    {
        if (!AbilityGainedBeforeNextCheckpoint.Contains(ability))
        {
            AbilityGainedBeforeNextCheckpoint.Add(ability);
            UpdateAbilityState(ability,true);
        }
    }

    private void UnregisterToList(AbilityPickup ability)
    {
        if (AbilityGainedBeforeNextCheckpoint.Contains(ability))
        {
            AbilityGainedBeforeNextCheckpoint.Remove(ability);
            UpdateAbilityState(ability,false);
        }
    }

    public void RespawnPickup()
    {
        for(int i = AbilityGainedBeforeNextCheckpoint.Count -1; i >= 0; i--)
        {
            AbilityGainedBeforeNextCheckpoint[i].OnRestart();
            UnregisterToList(AbilityGainedBeforeNextCheckpoint[i]);
        }
    }
    
    //Toggles the player's abilities in its Data,
    //Direct
    private void UpdateAbilityState(AbilityPickup ability, bool trigger)
    {
        switch (ability.AbilityType)
        {
            case AbilityType.GrapplingHook:
                _player.PlayerData.GrapplingAbilityActive = trigger;
                break;
            case AbilityType.WallJump:
                _player.PlayerData.WallJumpAbilityActive = trigger;
                break;
            case AbilityType.WallSmash:
                _player.PlayerData.CanBreakWalls = trigger;
                break;
            case AbilityType.Weapon:
                if (trigger) return;
                _player.Weapons.EquippedWeapon.SetToParent(_player.Weapons.EquippedWeapon.StartParent); // Returns the weapon to its starting socket
                _player.Weapons.RemoveWeapon(_player.Weapons.EquippedWeapon);
                break;
            default:
                throw new ArgumentOutOfRangeException();
        }
    }
}
