using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MatchPosition : MonoBehaviour
{
    public Transform Target;
    public float RX;
    public float RY;
    public float RZ;
    public float RW;
    private void LateUpdate()
    {
        transform.position = Target.position;
        //transform.rotation = new Quaternion(Target.rotation.x + RX,Target.rotation.y + RY,Target.rotation.z + RZ,Target.rotation.w + RW);
    }
}
