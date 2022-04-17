using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum AbilityType
{
    GrapplingHook,
    WallJump,
    WallSmash,
    Weapon
}

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
                _player.Weapons.RemoveWeapon(_player.Weapons.EquippedWeapon);
                break;
            default:
                throw new ArgumentOutOfRangeException();
        }
    }
}
