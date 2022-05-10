using UnityEngine;
using UnityEngine.UI;

public class FadeSequences : MonoBehaviour
{
    public Image BlackScreen;

    public void FadeToGame(float duration)
    {
        GenericManager.FadeOut(BlackScreen,duration,true);
    }
}
