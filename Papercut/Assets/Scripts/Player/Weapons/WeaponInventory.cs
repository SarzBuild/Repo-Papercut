using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Assertions;

public class WeaponInventory : MonoBehaviour
{
    public IReadOnlyList<WeaponBase> Inventory { get { return m_Inventory; } }

    public WeaponBase EquippedWeapon { get { return m_EquippedWeapon; } }

    public Player Owner { get; set; }

    [SerializeField]
    private List<WeaponBase> m_Inventory = new List<WeaponBase>();

    [SerializeField]
    private WeaponBase m_EquippedWeapon;

    void Awake()
    {
        if (gameObject != null)
        {
            Player player = gameObject.GetComponent<Player>();
            if (player != null)
            {
                Owner = player;
            }

            foreach (WeaponBase weapon in m_Inventory)
            {
                weapon.PushMuteAudio();
                weapon.SetOwner(Owner);
                weapon.OnAddedWeaponToInventory();
                weapon.PopMuteAudio();
            }

            if (m_EquippedWeapon != null && !HasWeapon(m_EquippedWeapon))
            {
                Assert.IsTrue(false, "Weapon " + m_EquippedWeapon.name + " is equipped on Awake but is not in the weapon inventory.");
            }
        }
    }

    public bool HasWeapon(WeaponBase weapon)
    {
        return m_Inventory.Contains(weapon);
    }

    // Returns true if weapon was added.
    // Can only add 1 type of weapon.
    public bool AddWeapon(WeaponBase weapon)
    {
        if (weapon == null || m_Inventory.Contains(weapon))
        {
            return false;
        }

        m_Inventory.Add(weapon);
        weapon.SetOwner(Owner);
        weapon.OnAddedWeaponToInventory();
        return true;
    }

    // Returns true if weapon was removed.
    public bool RemoveWeapon(WeaponBase weapon)
    {
        if (weapon == null)
        {
            return false;
        }

        int index = m_Inventory.IndexOf(weapon);
        if (index < 0)
        {
            return false;
        }

        m_Inventory.RemoveAt(index);
        weapon.OnRemovedWeaponFromInventory();

        // Auto equip next weapon
        if (m_EquippedWeapon == weapon)
        {
            m_EquippedWeapon = null;
            if (m_Inventory.Count > 0)
            {
                EquipWeapon(m_Inventory[0]);
            }
        }

        return true;
    }

    // Returns true if weapon could be equipped.
    // Must AddWeapon() first if it is a new weapon.
    public bool EquipWeapon(WeaponBase weapon)
    {
        if (weapon == null || EquippedWeapon == weapon)
        {
            return false;
        }

        if (!m_Inventory.Contains(weapon))
        {
            return false;
        }

        if (EquippedWeapon != null)
        {
            EquippedWeapon.OnStoringWeapon();
        }

        m_EquippedWeapon = weapon;
        m_EquippedWeapon.SetOwner(Owner);
        m_EquippedWeapon.OnEquippedWeapon();
        return true;
    }
}
