using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GenericManager : MonoBehaviour
{
    public static int PlayerLayerMask { get { return LayerMask.NameToLayer("Player"); } }
    public static int EnemyLayerMask { get { return LayerMask.NameToLayer("Enemy"); } }
    public static int GroundLayerMask { get { return LayerMask.NameToLayer("Ground"); } }
    public static int GrappleLayerMask { get { return LayerMask.NameToLayer("Grappling"); } }
    public static int WallGrabLayerMask { get { return LayerMask.NameToLayer("JumpableWall"); } }
    public static int BulletLayerMask { get { return LayerMask.NameToLayer("Bullet"); } }
    public static int TriggerLayerMask { get { return LayerMask.NameToLayer("TriggerZone"); } }
    public static int BreakableLayerMask { get { return LayerMask.NameToLayer("Breakable"); } }
    public static int ShieldLayerMask { get { return LayerMask.NameToLayer("Shield"); } }
    public static int GuardEnemyLayerMask { get { return LayerMask.NameToLayer("GuardEnemy"); } }

    private void Awake()
    {
        Physics2D.IgnoreLayerCollision(EnemyLayerMask, EnemyLayerMask, true);
        Physics2D.IgnoreLayerCollision(BulletLayerMask, BulletLayerMask, true);
        Physics2D.IgnoreLayerCollision(PlayerLayerMask,EnemyLayerMask,true);
        Physics2D.IgnoreLayerCollision(GuardEnemyLayerMask,ShieldLayerMask,true);
    }
    
    public static void FadeOut(Image target, float duration, bool ignoreTimeScale)
    {
        SetAlphaColor(target);
        target.CrossFadeAlpha(1f,0f,true);
        target.CrossFadeAlpha(0f,duration,ignoreTimeScale);
    }

    public static void FadeIn(Image target, float duration, bool ignoreTimeScale)
    {
        SetAlphaColor(target);
        target.CrossFadeAlpha(0f,0f,true);
        target.CrossFadeAlpha(1f, duration, ignoreTimeScale);
    }

    private static void SetAlphaColor(Image target)
    {
        var fixedColor = target.color;
        fixedColor.a = 1;
        target.color = fixedColor;
    }

    public void BackToMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void Quit()
    {
        Application.Quit();
    }
}
