using System.Collections;
using UnityEngine;

public class SelfDestroy : MonoBehaviour
{
    //Generic script that can be called with StartCoroutine
    protected IEnumerator DestroyAfterTimeAmount(GameObject gameObjectToDestroy, float seconds = 0f)
    {
        yield return new WaitForSeconds(seconds);
        Destroy(gameObjectToDestroy);
    }
}
