using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelManager : MonoBehaviour
{
    public Animator animator;
    private int levelToLoad;

    private void Start()
    {
        GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("Menu");
    }

    public void FadeToLevel(int lIndex)
    {        
        animator.SetTrigger("LevelFadeOut");
        levelToLoad = lIndex;
    }

    public void OnLevelFadeComplete()
    {
        SceneManager.LoadScene(levelToLoad);
    }

    public void StartGame()
    {
        SceneManager.LoadScene(1);
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    public void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("Level1Ambient");
    }

    public void LoadMenu()
    {
        SceneManager.LoadScene(0);
    }

    public void QuitGame()
    {
        Application.Quit();
    }
}