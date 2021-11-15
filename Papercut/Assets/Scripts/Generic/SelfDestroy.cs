using System.Collections;
using UnityEngine;

public class SelfDestroy : MonoBehaviour
{
    //Generic script that can be called with StartCoroutine, although, I'd have to check if the coroutine stops when the object gets destroyed and there's no leak of memory somewhere
    protected IEnumerator DestroyAfterTimeAmount(GameObject gameObjectToDestroy, float seconds = 0f)
    {
        yield return new WaitForSeconds(seconds);
        Destroy(gameObjectToDestroy);
    }
}
