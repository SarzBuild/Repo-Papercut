using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class GenericManager : MonoBehaviour
{
    private static GenericManager _instance;
    public static GenericManager Instance {
        get
        {
            if (_instance != null) return _instance;
            
            var singleton = FindObjectOfType<GenericManager>();
            if (singleton != null) return _instance;
            
            var go = new GameObject();
            _instance = go.AddComponent<GenericManager>();
            return _instance;
        }
    }
    
    public SoundEventData SoundEventData;
    
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
        if (_instance != null && _instance != this) Destroy(gameObject);
        else _instance = this;
        
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
    
    public static bool Timer( float timeWhenEventOccured, float cooldown)
    {
        return Time.time - (timeWhenEventOccured + cooldown) < 0;
    }

    public static void CreateNewProfile(EnemyData newProfile, EnemyData baseProfile, EnemyData.EnemyType type)
    {
        newProfile.IdleTime = baseProfile.IdleTime;
        newProfile.PatrolTime = baseProfile.PatrolTime;
        newProfile.ChaseRange = baseProfile.ChaseRange;
        newProfile.AttackRange = baseProfile.AttackRange;
        newProfile.KnockbackSpeed = baseProfile.KnockbackSpeed;
        newProfile.Acceleration = baseProfile.Acceleration;
        newProfile.Deceleration = baseProfile.Deceleration;
        newProfile.StartingFallSpeed = baseProfile.StartingFallSpeed;
        newProfile.FallClamped = baseProfile.FallClamped;
        newProfile.MoveClamped = baseProfile.MoveClamped;
        newProfile.PatrolMoveClamped = baseProfile.PatrolMoveClamped;
        newProfile.StartingState = baseProfile.StartingState;
        newProfile.AttackKnockbackForce = baseProfile.AttackKnockbackForce;
        newProfile.boxCastSize = baseProfile.boxCastSize;

        switch (type)
        {
            case EnemyData.EnemyType.Guardian:
            {
                newProfile.StunnedTime = baseProfile.StunnedTime;
                newProfile.MaxChargeTime = baseProfile.MaxChargeTime;
                newProfile.TooCloseRange = baseProfile.TooCloseRange;
                break;
            }
            case EnemyData.EnemyType.Spiderling:
            {
                newProfile.AlertRange = baseProfile.AlertRange;
                newProfile.SearchForTargetTime = baseProfile.SearchForTargetTime;
                break;
            }
            default:
                throw new ArgumentOutOfRangeException(nameof(type), type, null);
        }
    }

    public static void CallMusicEvent(string call, GameObject target)
    {
        AkSoundEngine.PostEvent(call,target);
    }
    
    public static void CallMusicEvent(AK.Wwise.Event call, GameObject target)
    {
        AkSoundEngine.PostEvent(call.Id,target);
    }

    public static void CallStateChange(string group, string state)
    {
        AkSoundEngine.SetState(group, state);
    }
    
    public static void CallStateChange(AK.Wwise.State state)
    {
        AkSoundEngine.SetState(state.GroupId,state.Id);
    }
}
