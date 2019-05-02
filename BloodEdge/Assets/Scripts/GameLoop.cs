using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameLoop : MonoBehaviour
{

    public static bool isInBattle;
    public static bool isGamePaused = false;
    public Player playerRef;
    //List<Enemies> currentEnemies;


    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (!isGamePaused) {
            playerRef.Run();
        }

        
    }
}
