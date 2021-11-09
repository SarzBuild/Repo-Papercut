using UnityEngine;

public class MoveWithTarget2D : MonoBehaviour
{
    [SerializeField] private Transform _target;
    [SerializeField] private bool useOffset;
    [SerializeField] private float _offset = 10f;

    private void Update()
    {
        if (useOffset)
        {
            UpdateSelfPos(_target,_offset);
            return;
        }
        UpdateSelfPos(_target);
    }

    private void UpdateSelfPos(Transform target, float offset = 10f)
    {
        if (transform.position == new Vector3(target.position.x, target.position.y, target.position.z + offset)) return;
        transform.position = new Vector3(target.position.x, target.position.y, target.position.z + offset);
    }
}
