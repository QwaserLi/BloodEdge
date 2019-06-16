using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/**
 * A check point variable that is used for respawning the player character upon death.
 **/
public class Checkpoint : MonoBehaviour
{
    bool triggered = false;
    public bool starter = false;

    //When triggered the location of this checkpoint becomes the new spawn.
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player" && !triggered) {
            other.GetComponent<PlayerHealth>().SetCheckpoint(this.gameObject);
            triggered = true;
        }
    }
}
