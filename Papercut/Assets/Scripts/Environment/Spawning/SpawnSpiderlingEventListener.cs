using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class SpawnSpiderlingEventListener : MonoBehaviour
{
    public GameEvent OpenDoors;
    public List<GameObject> Enemies = new List<GameObject>();

    public void SpawnEnemies()
    {
        for (int i = 0; i < Enemies.Count; i++)
        {
            if (Enemies[i].activeSelf) continue;
            Enemies[i].SetActive(true);
        }
    }

    private void Update()
    {
        for (int i = Enemies.Count -1; i >= 0; i--)
        {
            if (Enemies[i] == null)
            {
                Enemies.RemoveAt(i);
            }
        }
        
        if (Enemies.Count <= 0)
        {
            OpenDoors.Raise();
            gameObject.SetActive(false);
        }
    }
}
