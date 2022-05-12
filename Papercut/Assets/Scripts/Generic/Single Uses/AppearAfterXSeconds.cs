using System.Collections;
using UnityEngine;


public class AppearAfterXSeconds : MonoBehaviour
{
    [SerializeField] public float Seconds;

    private void Start()
    {
        StartCoroutine(AppearAfterTimeAmount(transform.GetChild(0).gameObject,Seconds));
    }

    protected IEnumerator AppearAfterTimeAmount(GameObject gameObjectToAppear, float seconds = 0f)
    {
        yield return new WaitForSeconds(seconds);
        gameObjectToAppear.SetActive(true);
    }
}
