using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;
public class VictoryScreen : MonoBehaviour
{

    public GameObject panel;
    public EncounterScript encounter;

    // Update is called once per frame
    void Update()
    {
        if (encounter.IsCleared()) {
            PlayerHealth.isDead = true;
            //Destroy(GameObject.Find("MC"));
            panel.SetActive(true);
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
        }
    }
}
