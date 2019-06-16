using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;

/**
 * Creates a set of spikes, which damages enemies and traps them 
 **/
public class Spikes : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;
    public GameObject spikes;

    /**
     * On spawn, shake the camera, play sound effect, then start the countdown to destroy the object 
     **/
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();
        shakeSource.GenerateImpulse();
        GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("Spikes");
        StartCoroutine(DestroySpikes());
    }
    
    /**
     *  Damage on hit  
     **/
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Attackable") {
            if (other.GetComponent<IHittable>().Hit(20, new Vector3(1, 1, 1))) {
                paRef.UpdateComboCount();
            }
        }
    }

    /**
     *  Destroy spikes after some time, enables mesh after a few seconds to hid
     *  the animation starting
     **/
    private IEnumerator DestroySpikes()
    {
        yield return new WaitForSeconds(0.2f);
        gameObject.GetComponent<MeshRenderer>().enabled = true;
        spikes.SetActive(true);
        yield return new WaitForSeconds(2.0f);
        Destroy(gameObject);
    }
}
