using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderLegPro_GroundedCTRL : MonoBehaviour
{
    public Transform Body;
    public Transform RaycastOrigin;
    private void Start()
    {
        RaycastOrigin = transform.parent.transform;
    }
    
    private void Update()
    {
        var hit = Physics2D.Raycast(Body.position + new Vector3(0f, 0.05f), -transform.up, Mathf.Infinity, GenericManager.GroundLayerMask);
        if(hit)
        {
            transform.position = hit.point + new Vector2(0f, 0.05f);
        }    
    }
}
