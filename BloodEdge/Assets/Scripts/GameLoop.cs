using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameLoop : MonoBehaviour
{
    public static bool isInBattle;
    public static bool isGamePaused = false;
    public GameObject pausePanel;
    float pauseTimer;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetAxisRaw("Cancel") > 0 && pauseTimer > 0.5f) {
            pauseTimer = 0;
            isGamePaused = !isGamePaused;
            if (isGamePaused) {
                pausePanel.SetActive(true);
            } else {
                pausePanel.SetActive(false);
            }
        }
        pauseTimer += Time.deltaTime;       
    }
}
