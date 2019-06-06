using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;
using Cinemachine;

public class Scythe : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shaker;
    AudioManager soundManager;
    public GameObject trail;
    float currentDamageToDeal = 35;

    private void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shaker = GetComponent<CinemachineImpulseSource>();
        soundManager = GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>();
    }

    public void UpdateDamage(float amt)
    {
        currentDamageToDeal = amt;
    }

    public void PlayHitSound()
    {
        soundManager.Play("ScytheHit");
    }

    public void PlaySwingSound()
    {
        soundManager.Play("ScytheMiss");
    }

    public void OnTriggerEnter(Collider collider)
    {
        trail.SetActive(true);
        if (collider.tag == "Attackable") {            
            shaker.GenerateImpulse();
            if(collider.GetComponent<IHittable>().Hit(currentDamageToDeal, new Vector3(1, 1, 1))) {
                paRef.UpdateComboCount();
            }
        }
    }
}
