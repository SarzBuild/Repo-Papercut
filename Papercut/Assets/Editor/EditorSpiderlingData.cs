using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(SpiderlingEnemyBrain), editorForChildClasses: true)]
public class EditorSpiderlingData : Editor
{
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        var d = target as SpiderlingEnemyBrain;

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

                    EditorGUILayout.Vector3Field("Last Know Player Location:", d.NewEnemyData.LastKnowPlayerLocation);

                    EditorGUILayout.Vector3Field("Predicted Player Location:", d.NewEnemyData.PredictedPlayerDirection);
                    
                    EditorGUILayout.Toggle("Is Looking For Player:", d.NewEnemyData.SearchingForTarget);
                    
                    
                }

                EditorGUI.indentLevel--;
            }
        }
    }
}
