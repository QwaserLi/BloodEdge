using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;
using Cinemachine;

public class Scythe : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shaker;
    AudioSource audio;
    public GameObject trail;
    float currentDamageToDeal = 30;

    private void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shaker = GetComponent<CinemachineImpulseSource>();
        audio = GetComponent<AudioSource>();
    }

    public void UpdateDamage(float amt)
    {
        currentDamageToDeal = amt;
    }

    public void OnTriggerEnter(Collider collider)
    {
        trail.SetActive(true);
        if (collider.tag == "Attackable") {
            if (!audio.isPlaying) {
                audio.Play();
            }
            shaker.GenerateImpulse();
            collider.GetComponent<IHittable>().Hit(currentDamageToDeal, new Vector3(1, 1, 1));
            paRef.UpdateComboCount();
        }
    }
}
