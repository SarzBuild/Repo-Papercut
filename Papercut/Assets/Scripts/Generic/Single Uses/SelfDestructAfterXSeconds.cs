using UnityEngine;

public class SelfDestructAfterXSeconds : SelfDestroy
{
    [SerializeField] public float Seconds;

    private void OnEnable()
    {
        if (transform.parent != null) transform.parent = null;
        StartCoroutine(DestroyAfterTimeAmount(gameObject,Seconds));
    }
}
