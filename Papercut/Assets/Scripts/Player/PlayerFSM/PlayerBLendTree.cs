using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerBLendTree : MonoBehaviour
{
    ScriptableObject Speed;    // Start is called before the first frame update
    void Start()
    {
        Speed = GetComponent<Player>().PlayerData;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
