using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(GuardianEnemyBrain), editorForChildClasses: true)]
public class EditorGuardData : Editor
{
    private string node;

    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        var d = target as GuardianEnemyBrain;

        using (var debugGroup = new EditorGUILayout.FadeGroupScope(Convert.ToSingle(d.EnemyData.ShowDebugValues)))
        {
            if (debugGroup.visible)
            {
                EditorGUILayout.PrefixLabel("Debug Values");
                EditorGUI.indentLevel++;
                EditorGUILayout.TextField("Parameters will only show when the game is running.");

                if (d.NewEnemyData != null)
                {
                    EditorGUILayout.TextField("Current Node", d.NewEnemyData.CurrentNode.ToString());

                    EditorGUILayout.FloatField("Horizontal Speed:", d.NewEnemyData.CurrentHorizontalSpeed);

                    EditorGUILayout.FloatField("Vertical Speed:", d.NewEnemyData.CurrentVerticalSpeed);

                    EditorGUILayout.Toggle("Is Charging:", d.NewEnemyData.IsCharging);
                    
                    EditorGUILayout.Toggle("Is Stunned:", d.NewEnemyData.IsStunned);
                    
                    EditorGUILayout.Toggle("Can Attack:", d.NewEnemyData.CanAttack);
                }

                EditorGUI.indentLevel--;
            }
        }
    }
}

