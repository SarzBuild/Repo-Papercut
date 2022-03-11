using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GenericManager : MonoBehaviour
{
    public static int PlayerLayerMask { get { return LayerMask.NameToLayer("Player"); } }
    public static int EnemyLayerMask { get { return LayerMask.NameToLayer("Enemy"); } }
    public static int GroundLayerMask { get { return LayerMask.NameToLayer("Ground"); } }
    public static int GrappleLayerMask { get { return LayerMask.NameToLayer("Grappling"); } }
    public static int WallGrabLayerMask { get { return LayerMask.NameToLayer("JumpableWall"); } }
    public static int BulletLayerMask { get { return LayerMask.NameToLayer("Bullet"); } }

    private void Awake()
    {
        Physics2D.IgnoreLayerCollision(EnemyLayerMask, EnemyLayerMask, true);
        Physics2D.IgnoreLayerCollision(BulletLayerMask, BulletLayerMask, true);
    }
}
