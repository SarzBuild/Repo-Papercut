using UnityEngine;

public class CheckForObjectCollision : MonoBehaviour
{
    //Generic script that checks for an object and return the hit value
    [SerializeField] protected LayerMask TargetLayerMask;
    protected static RaycastHit2D CheckForObject(Collider2D collider2D, Vector2 direction, LayerMask passLayerMask, float rayMaxDist = Mathf.Infinity)
    {
        var bounds = collider2D.bounds;
        var hit = Physics2D.BoxCast(
            bounds.center,
            bounds.size,
            0f,
            direction,
            rayMaxDist,
            passLayerMask);
        return hit;
    }
}
