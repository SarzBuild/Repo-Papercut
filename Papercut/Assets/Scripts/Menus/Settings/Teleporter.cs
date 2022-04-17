using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Teleporter : MonoBehaviour
{
    public List<GameObject> TeleportPoints = new List<GameObject>();
    public Transform PlayerTransform;

    private void Start()
    {
        PlayerTransform = Player.Instance.transform;
    }

    public void Teleport(int value)
    {
        if (value > TeleportPoints.Count)
        {
            Debug.LogError(string.Format("{0} is out of range",value));
        }
        PlayerTransform.position = TeleportPoints[value].transform.position;
    }




}
