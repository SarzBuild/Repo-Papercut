using System;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(AbilityPickup), editorForChildClasses: true)]
public class EditorWeaponPickup : Editor
{
     public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        var d = target as AbilityPickup;

        using (var meleeGroup = new EditorGUILayout.FadeGroupScope(Convert.ToSingle(d.AbilityType)))
        {
            if (meleeGroup.visible)
            {
                if (d.AbilityType == AbilityType.Weapon)
                {
                    d.Weapon = (WeaponBase)EditorGUILayout.ObjectField("Weapon Base:", d.Weapon, GetType(), false);
                }
            }
        }
    }
}
