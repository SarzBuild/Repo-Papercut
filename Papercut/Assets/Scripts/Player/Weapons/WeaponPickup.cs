using UnityEngine;
using UnityEngine.Assertions;

public enum WeaponPickup_PickupEquipOptions
{
    DoNotEquip = 0,
    EquipIfNoOtherEquippedWeapons,
    AlwayEquip
}

[RequireComponent(typeof(Collider2D))]
public class WeaponPickup : MonoBehaviour
{
    public WeaponBase Weapon;

    public WeaponPickup_PickupEquipOptions EquipOnPickupSetting = WeaponPickup_PickupEquipOptions.DoNotEquip;

    public Collider2D Collider { get; set; }

    private void Awake()
    {
        Assert.IsNotNull(Weapon, "Weapon on pickup " + name + " is not set.");
        Collider = GetComponent<Collider2D>();
        Collider.isTrigger = true;
    }

    void OnTriggerEnter2D(Collider2D col)
    {
        Player player = col.GetComponent<Player>();
        if (player != null)
        {
            if (player.Weapons.AddWeapon(Weapon))
            {
                Debug.Log("Giving weapon " + Weapon.name + " to player " + player.name);
                if (EquipOnPickupSetting == WeaponPickup_PickupEquipOptions.AlwayEquip)
                {
                    player.Weapons.EquipWeapon(Weapon);
                }
                else if (EquipOnPickupSetting == WeaponPickup_PickupEquipOptions.EquipIfNoOtherEquippedWeapons && player.Weapons.EquippedWeapon == null)
                {
                    player.Weapons.EquipWeapon(Weapon);
                }

                Destroy(gameObject);
            }
        }
    }
}
