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
                        d.JumpXVelocity = EditorGUILayout.FloatField("AttackJumpXVelocity:",d.JumpXVelocity);
                        d.JumpYVelocity = EditorGUILayout.FloatField("AttackJumpYVelocity:",d.JumpYVelocity);
                        EditorGUI.indentLevel--;
                        break;
                    }
                    case EnemyData.EnemyType.Guardian:
                    {
                        EditorGUILayout.LabelField("Guard Values");
                        EditorGUI.indentLevel++;
                        d.IsStunned = EditorGUILayout.Toggle("Currently Stunned:",d.IsStunned);
                        d.StunnedTime = EditorGUILayout.FloatField("StunnedTime:",d.StunnedTime);
                        EditorGUI.indentLevel--;
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
                
                d.StartingFallSpeed = EditorGUILayout.FloatField("Fall Speed:", d.StartingFallSpeed); 
                
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
