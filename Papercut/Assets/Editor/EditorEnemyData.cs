using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;

[CustomEditor(typeof(EnemyData), editorForChildClasses: true)]
public class EditorEnemyData : Editor
{
    private string node;
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        var d = target as EnemyData;
        
        using (var debugGroup = new EditorGUILayout.FadeGroupScope(Convert.ToSingle(d.ShowDebugValues)))
        {
            if (debugGroup.visible)
            {
                EditorGUILayout.PrefixLabel("Debug Values");
                EditorGUI.indentLevel++;

                if (d.CurrentNode != null)
                {
                    node = EditorGUILayout.TextField("Current Node", d.CurrentNode.ToString());
                }

                d.CurrentHorizontalSpeed = EditorGUILayout.FloatField("Horizontal Speed:",d.CurrentHorizontalSpeed);
                
                d.CurrentVerticalSpeed = EditorGUILayout.FloatField("Vertical Speed:",d.CurrentVerticalSpeed);
                
                d.CurrentVerticalSpeed = EditorGUILayout.FloatField("Fall Speed:",d.CurrentFallSpeed);

                EditorGUI.indentLevel--;
            }
        }
        

        using (var meleeGroup =
               new EditorGUILayout.FadeGroupScope(Convert.ToSingle(d.Type == EnemyData.EnemyType.Spiderling || d.Type == EnemyData.EnemyType.Guardian)))
        {
            if (meleeGroup.visible)
            {
                switch (d.Type)
                {
                    case EnemyData.EnemyType.Spiderling:
                    {
                        EditorGUILayout.LabelField("Spiderling Values"); 
                        EditorGUI.indentLevel++;
                        EditorGUILayout.PrefixLabel("Spiderling Type");
                        d.SpiderlingType = (EnemyData.SpiderlingProfileType)EditorGUILayout.EnumPopup(d.SpiderlingType);
                        EditorGUI.indentLevel--;
                        break;
                    }
                    case EnemyData.EnemyType.Guardian:
                    {
                        EditorGUILayout.LabelField("Guard Values"); 
                        break;
                    }
                    
                }

                EditorGUI.indentLevel++;
                
                EditorGUILayout.PrefixLabel("Randomization Strength");
                d.RandomizationStrength = (EnemyData.RandomizationType)EditorGUILayout.EnumPopup(d.RandomizationStrength);

                d.IdleTime = EditorGUILayout.FloatField("Idle Time:",d.IdleTime);
                
                d.PatrolTime = EditorGUILayout.FloatField("Patrol Time:",d.PatrolTime);

                d.ChaseRange = EditorGUILayout.FloatField("Chase Range:",d.ChaseRange);
                
                d.AttackRange = EditorGUILayout.FloatField("Attack Range:",d.AttackRange);
                
                d.ChaseRange = EditorGUILayout.FloatField("Knockback Speed:",d.KnockbackSpeed);
                
                d.Acceleration = EditorGUILayout.FloatField("Acceleration:",d.Acceleration);
                
                d.Deceleration = EditorGUILayout.FloatField("Deceleration:",d.Deceleration);

                d.MoveClamped = EditorGUILayout.FloatField("Move Clamp:",d.MoveClamped);
                
                d.FallClamped = EditorGUILayout.FloatField("Fall Clamp:",d.FallClamped);
                
                d.PatrolMoveClamped = EditorGUILayout.FloatField("Patrol Move Clamp:",d.PatrolMoveClamped);
                
                EditorGUI.indentLevel--;
            }
        }

        using (var hunterGroup =
               new EditorGUILayout.FadeGroupScope(Convert.ToSingle(d.Type == EnemyData.EnemyType.Hunter)))
        {
            if (hunterGroup.visible)
            {
                EditorGUILayout.PrefixLabel("Hunter Values");
                EditorGUI.indentLevel++;
                d.AttackRange = EditorGUILayout.FloatField("Attack Range:",d.AttackRange);
            }
        }
        
    }
}
