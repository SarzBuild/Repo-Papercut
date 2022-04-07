using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiderPro_ContraintCTRL : MonoBehaviour
{

    private Vector3 originalPosition;
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

/*public class SpiderPro_ContraintCTRL1 : MonoBehaviour
{
    
    public GameObject MoveGameObject; 
    public float LegMoveSpeed = 7f; 
    public float MoveDistance = 0.7f; 
    public float MoveStoppingDistance = 0.4f; 
    public SpiderPro_ContraintCTRL OppositeLegController;
    private Vector3 _originalPosition; 
    private bool _isMoving = false; 
    private bool _moving = false; 

    private void Start()
    {
        _originalPosition = transform.position; // to fix the leg to the ground when the game first launches 
    }

    private void Update()
    {
        var distanceToMoveCube = Vector3.Distance(transform.position, MoveGameObject.transform.position);
        if(distanceToMoveCube >= MoveDistance && !OppositeLegController.isItMoving() || _moving) 
        {
            _moving = true; 
            transform.position = Vector3.Lerp(transform.position, MoveGameObject.transform.position + new Vector3(0f, 0.3f, 0f), Time.deltaTime * LegMoveSpeed); 
            _originalPosition = transform.position; 
            _isMoving = true; 
            
            if(distanceToMoveCube < MoveStoppingDistance) 
            {
                _moving = false; 
            }
        }
        else
        {
            transform.position = Vector3.Lerp(transform.position, _originalPosition + new Vector3(0f, -0.3f, 0f), Time.deltaTime * LegMoveSpeed * 3f); 
            _isMoving = false; 
        }
    } 

    public bool IsItMoving() 
    {
        return _isMoving;
    }

}*/
