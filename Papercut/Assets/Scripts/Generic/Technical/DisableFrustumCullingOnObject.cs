using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisableFrustumCullingOnObject : MonoBehaviour
{
    private Camera _camera;
    private Mesh _mesh;
    private void Start()
    {
        _camera = Player.Instance.InputHandler._mainCamera;
    }
    private void Update ()
    {
        Vector3 camPosition = _camera.transform.position; 
        Vector3 camForwardNormalize = Vector3.Normalize(_camera.transform.forward);
        float boundsDistance = (_camera.farClipPlane - _camera.nearClipPlane) / 2 + _camera.nearClipPlane;
        Vector3 boundsTarget = camPosition + (camForwardNormalize * boundsDistance);
        
        Vector3 relativeBoundsTarget = this.transform.InverseTransformPoint(boundsTarget);

        if (_mesh == null)
        {
            _mesh = GetComponent<MeshFilter>().mesh;
        }
        
        _mesh.bounds = new Bounds(relativeBoundsTarget, Vector3.one);
    }
}
