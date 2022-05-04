using System;
using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(EnemyData), editorForChildClasses: true)]
public class EditorEnemyData : Editor
{
    public override void OnInspectorGUI()
    {
        base.OnInspectorGUI();

        var d = target as EnemyData;

        using (var scope =
               new EditorGUILayout.FadeGroupScope(Convert.ToSingle(d.Type == EnemyData.EnemyType.Spiderling || d.Type == EnemyData.EnemyType.Guardian || d.Type == EnemyData.EnemyType.Hunter)))
        {
            if (scope.visible)
            {
                switch (d.Type)
                {
                    case EnemyData.EnemyType.Spiderling:
                    {
                        Prefix("Spiderling Properties");
                        
                        EditorGUILayout.PrefixLabel("Spiderling Type");
                        d.JumpXVelocity = EditorGUILayout.FloatField("AttackJumpXVelocity:",d.JumpXVelocity);
                        d.JumpYVelocity = EditorGUILayout.FloatField("AttackJumpYVelocity:",d.JumpYVelocity);
                        d.AlertRange = EditorGUILayout.FloatField("Alert Range:",d.AlertRange);
                        d.SearchForTargetTime = EditorGUILayout.FloatField("Search For Target Time:", d.SearchForTargetTime);
                        SharedLayout(d, "Chase Range:");
                        
                        break;
                    }

                    case EnemyData.EnemyType.Guardian:
                    {
                        Prefix("Guard Properties");
                        d.StunnedTime = EditorGUILayout.FloatField("Stunned Time:", d.StunnedTime);
                        d.MaxChargeTime = EditorGUILayout.FloatField("Max Charge Time:", d.MaxChargeTime);
                        SharedLayout(d, "Seeing Range:");

                        break;
                    }

                    case EnemyData.EnemyType.Hunter:
                    {
                        Prefix("Hunter Properties");
                        d.AttackRange = EditorGUILayout.FloatField("Attack Range:", d.AttackRange);

                        break;
                    }
                }
            }
        }
    }

    private void Prefix(string input)
    {
        if(Indentation() > 0)
        {
            EditorGUI.indentLevel--;
        }
        EditorGUILayout.PrefixLabel(input);
        EditorGUI.indentLevel++;
    }

    private void SharedLayout(EnemyData d, string rangeType)
    {
        Prefix("Base Properties");
        d.RandomizationStrength = (EnemyData.RandomizationType)EditorGUILayout.EnumPopup("Randomization Strength:",d.RandomizationStrength);
        d.IdleTime = EditorGUILayout.FloatField("Idle Time:",d.IdleTime);
        d.PatrolTime = EditorGUILayout.FloatField("Patrol Time:",d.PatrolTime);
        d.ChaseRange = EditorGUILayout.FloatField(rangeType,d.ChaseRange);
        d.AttackRange = EditorGUILayout.FloatField("Attack Range:",d.AttackRange);
        d.KnockbackSpeed = EditorGUILayout.FloatField("Knockback Speed:",d.KnockbackSpeed);
        d.Acceleration = EditorGUILayout.FloatField("Acceleration:",d.Acceleration);
        d.Deceleration = EditorGUILayout.FloatField("Deceleration:",d.Deceleration);
        d.MoveClamped = EditorGUILayout.FloatField("Move Clamp:",d.MoveClamped);
        d.FallClamped = EditorGUILayout.FloatField("Fall Clamp:",d.FallClamped);
        d.PatrolMoveClamped = EditorGUILayout.FloatField("Patrol Move Clamp:",d.PatrolMoveClamped);
        d.StartingFallSpeed = EditorGUILayout.FloatField("Fall Speed:", d.StartingFallSpeed);
        d.AttackKnockbackForce = EditorGUILayout.Vector2Field("Attack Knockback Force:", d.AttackKnockbackForce);
        d.boxCastSize = EditorGUILayout.Vector2Field("BoxCast Size (Gizmos):", d.boxCastSize);
    }

    private int Indentation()
    {
        return EditorGUI.indentLevel;
    }
}
