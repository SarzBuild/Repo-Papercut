using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class CinematicManager : MonoBehaviour
{
    private PlayableDirector _director;
    public List<PlayableAsset> Cinematics;
    
    private void Start()
    {
        _director = GetComponent<PlayableDirector>();
    }

    public void StartSequence(int index)
    {
        _director.playableAsset = Cinematics[index];
        _director.Play();
    }
    
}
