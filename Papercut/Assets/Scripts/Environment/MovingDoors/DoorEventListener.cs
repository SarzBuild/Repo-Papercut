using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorEventListener : MonoBehaviour
{
    public List<Transform> Transforms = new List<Transform>();
    private List<Vector3> _positionList;
    public Animator Animator;
    public Collider2D Collider2D;
    
    private int _nextPos;

    private void Awake()
    {
        MakeVector3List();
        if (Animator == null) Animator = GetComponentInParent<Animator>();
        if (Collider2D == null) Collider2D = GetComponent<Collider2D>();
        Animator.SetBool("closed",true);
    }

    private void MakeVector3List()
    {
        _positionList = new List<Vector3>();
        for (int i = 0; i < Transforms.Count; i++)
        {
            _positionList.Add(Transforms[i].position);
        }
    }

    private void Update()
    {
        MoveToNextPos();
    }

    private void MoveToNextPos()
    {
        transform.parent.transform.position = Vector2.Lerp(transform.parent.transform.position, _positionList[_nextPos], Time.deltaTime*10);
    }
    
    public void InitialPos()
    {
        Animator.SetBool("closed",false);
        Collider2D.enabled = false;
    }

    public void ActivatedPos()
    {
        _nextPos = 1;
    }
}
