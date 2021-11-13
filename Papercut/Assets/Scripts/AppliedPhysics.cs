using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AppliedPhysics : MonoBehaviour
{
    
    
    
    
    //private bool CheckIfGrounded() => CollisionCheck(new Vector3(0, -0.5f, 0), 1f, 0.5f, GroundLayerMask);
    private RaycastHit2D CollisionCheck(Collider2D passCollider2D,float sizeDivider, float angle, Vector2 direction, float rayDistance,LayerMask passLayerMask)
    {
        var bounds = passCollider2D.bounds;
        var hit = Physics2D.BoxCast(
            bounds.center, 
            bounds.size / sizeDivider, 
            angle, 
            direction,
            rayDistance,
            passLayerMask
            ); 
        return hit;
    }
}
