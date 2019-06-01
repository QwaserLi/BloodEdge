using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoint : MonoBehaviour
{
    bool triggered = false;
    public bool starter = false;

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player" && !triggered) {
            other.GetComponent<PlayerHealth>().SetCheckpoint(this.gameObject);
            triggered = true;
        }
    }


}
