using System.Collections;
using UnityEngine;

public class PassThroughtPlatforms : CheckForObjectCollision
{
    //I'll remake that stuff here..
    
    private Collider2D _collider2D;
    private PlayerController _playerController;
    [SerializeField] private LayerMask PlayerLayerMask;
    public float ExtraValue;

    private bool _coroutineRunning;

    private void Awake()
    {
        _collider2D = GetComponent<Collider2D>();
    } 

    private void Update()
    {
        var tempObj = CheckForObject(_collider2D, Vector2.up, TargetLayerMask, ExtraValue);
        if (tempObj.collider != null)
        {
            if ((PlayerLayerMask.value & (1 << tempObj.collider.gameObject.layer)) > 0)
            {
                if (!(_playerController.FeetPos.position.y >= transform.position.y)) return;
                //if (!_playerController.GetMovingDown()) return;
                if (!_coroutineRunning) StartCoroutine(PlayerPassThroughPlatformTimer());
            }
        }
        else if (transform.position.y < _playerController.FeetPos.position.y)
        {
            RemoveSelfCollision();
            return;
        }
        ReaddSelfCollision();
    }

    private void RemoveSelfCollision()
    {
        if(!_coroutineRunning) _collider2D.enabled = true;
    }
    
    private void ReaddSelfCollision()
    {
        _collider2D.enabled = false;
    }

    private IEnumerator PlayerPassThroughPlatformTimer()
    {
        _coroutineRunning = true;
        _collider2D.enabled = false;
        yield return new WaitUntil(() => CheckIfPlayerPassed());
        _collider2D.enabled = true;
        _coroutineRunning = false;
    }

    private bool CheckIfPlayerPassed()
    {
        return transform.position.y > _playerController.HeadPos.position.y;
    }
}
