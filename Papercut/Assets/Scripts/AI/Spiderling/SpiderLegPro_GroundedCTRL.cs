using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderLegPro_GroundedCTRL : MonoBehaviour
{
    int layerMask;
    GameObject raycastOrigin;
    // Start is called before the first frame update
    void Start()
    {
        layerMask = LayerMask.GetMask("Ground");
        raycastOrigin = transform.parent.gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        RaycastHit hit;

        // TO FIX
        //if(Physics2D.Raycast(raycastOrigin.transform.position + new Vector2(0f, 0.05f), -transform.up, out hit, Mathf.Infinity, layerMask))
        {
        //    transform.position = hit.point + new Vector3(0f, 0.05f, 0f);
        }    
    }
}
