using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MatchPosition : MonoBehaviour
{
    public Transform Target;
    public Transform Target2;
    public float RX;
    public float RY;
    public float RZ;
    public float RW;
    private void LateUpdate()
    {
        transform.position = Target.position;
    }
}
