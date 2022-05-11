using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadSceneCredits : MonoBehaviour
{
    public void LoadCredits()
    {
        SceneManager.LoadScene("Credits");
    }
}
