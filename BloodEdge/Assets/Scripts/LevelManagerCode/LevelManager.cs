using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

/**
 * Class used to navigate between scenes * 
 * */
public class LevelManager : MonoBehaviour
{
    // Based of build index, play the appropriate music
    private void Start()
    {        
        if (SceneManager.GetActiveScene().buildIndex == 0) {
            GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("Menu");
        } else if (SceneManager.GetActiveScene().buildIndex == 1) {
            GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("Level1Ambient");
        }
    }

    public void StartGame()
    {
        SceneManager.LoadScene(1);
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