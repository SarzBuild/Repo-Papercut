using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using UnityEngine.SceneManagement;

public class CinematicObjectFetcher : MonoBehaviour
{
    public List<GameObject> TrackList = new List<GameObject>();
    private PlayableDirector _timeline;
    private TimelineAsset _timelineAsset;
    public bool AutoBind = true;

    private void Start()
    {
        TrackList[0] = Player.Instance.gameObject;
        
        
        
        _timeline = GetComponent<PlayableDirector>();
        if (AutoBind)
        {
            
        }
    }
    

    private void BindTimelineTracks()
    {
        _timelineAsset = (TimelineAsset)_timeline.playableAsset;
        for (int i = 0; i < TrackList.Count; i++)
        {
            if (TrackList[i] != null)
            {
                foreach (var source in _timeline.playableAsset.outputs)
                {
                    _timeline.SetGenericBinding(source.sourceObject,TrackList[i]);
                }
            }
        }
    }
}
