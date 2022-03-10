using UnityEngine;
using UnityEngine.SceneManagement;

public class ScenePartLoader : MonoBehaviour
{
    public Transform player;
    public float loadRange;
    
    private bool _isLoaded;
    private bool _shouldLoad;
    private void Start()
    {
        player = Player.Instance.transform;
        if (player == null)
        {
            Debug.LogError(string.Format("{0} loaded unsuccessfully in {1}", player, this));
        }
        
        if (SceneManager.sceneCount > 0)
        {
            for (var i = 0; i < SceneManager.sceneCount; ++i)
            {
                var scene = SceneManager.GetSceneAt(i);
                if (scene.name == gameObject.name)
                {
                    _isLoaded = true;
                }
            }
        }
    }

    private void Update()
    {
        DistanceCheck();
    }

    private void DistanceCheck()
    {
        if (Vector3.Distance(player.position, transform.position) < loadRange)
        {
            LoadScene();
        }
        else
        {
            UnLoadScene();
        }
    }

    private void LoadScene()
    {
        if (!_isLoaded)
        {
            SceneManager.LoadSceneAsync(gameObject.name, LoadSceneMode.Additive);
            _isLoaded = true;
        }
    }

    private void UnLoadScene()
    {
        if (_isLoaded)
        {
            SceneManager.UnloadSceneAsync(gameObject.name);
            _isLoaded = false;
        }
    }
}