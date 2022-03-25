using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderPro_ContraintCTRL : MonoBehaviour
{

    Vector3 originalPosition;
    public float movingSpeed = 7f;
    public GameObject theFootcubes;
    public SpiderPro_ContraintCTRL otherLeg;
    bool isMoving = false;
    bool move = false;
    /// <summary>
    /// /////
    public float movingStoppingDistance = 0.4f;
    //
    /// </summary>
    public float feeties;
    public float howHighISDIS;
    // Start is called before the first frame update
    void Start()
    {
        originalPosition = transform.position;
        feeties = 0.15f;
        howHighISDIS = 0.07f;
    }

    // Update is called once per frame
    void Update()
    {
        //transform.position = originalPosition;
        float distanceToMoveItBack = Vector3.Distance(transform.position, theFootcubes.transform.position);
        if((distanceToMoveItBack >= howHighISDIS && !otherLeg.isItMoving()) || move)
        {
            move = true;
            transform.position = Vector3.Lerp(transform.position, theFootcubes.transform.position + new Vector3(0f, feeties, 0f), Time.deltaTime * movingSpeed);
            originalPosition = transform.position;
            isMoving = true;
            if(distanceToMoveItBack <movingStoppingDistance)
            {
                move = false;
            }
            // = theFootcubes.transform.position;
        }

        else
        {
            //originalPosition = transform.position;
            transform.position = Vector3.Lerp(transform.position, originalPosition + new Vector3(0f, -feeties, 0f), Time.deltaTime * movingSpeed *3f);
            isMoving = false;
        }
    }

    public bool isItMoving()
    {
        return isMoving;
    }
}
