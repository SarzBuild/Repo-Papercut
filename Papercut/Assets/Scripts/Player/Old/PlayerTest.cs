using System;
using System.Collections;
using System.Linq;
using System.Collections.Generic;
using UnityEngine;





public class PlayerTest : MonoBehaviour
{
    public PlayerData PlayerData;

    public Transform rando;

    public PlayerInputState inputs;
    /*private void Update()
    {
        var maxX = 0.65;
        var minX = 0.45;
        var maxY = 1;
        var minY = 0;

        var max = Mathf.Lerp(0,1,PlayerData.test) * 0.65;
        var min = Mathf.InverseLerp(1,0,PlayerData.test) * 0.45;
        var percentage = min + max;
    }*/

    private void LateUpdate()
    {
        rando.transform.position = inputs.GetMousePos;
    }
}
