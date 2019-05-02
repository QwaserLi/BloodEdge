using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelChanger : MonoBehaviour
{
    public Animator animator;
    private int levelToLoad;

    public void FadeToLevel(int lIndex)
    {
        animator.SetTrigger("LevelFadeOut");
        levelToLoad = lIndex;
    }

    public void OnLevelFadeComplete()
    {
        SceneManager.LoadScene(levelToLoad);
    }
}