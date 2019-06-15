﻿using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;

public class Spikes : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;
    public GameObject spikes;

    float amtToIncrease = 2.2f;

    // Start is called before the first frame update
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();
        shakeSource.GenerateImpulse();
        GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("Spikes");
        StartCoroutine(DestroySpikes());
    }
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Attackable") {
            print("hit");
            if (other.GetComponent<IHittable>().Hit(20, new Vector3(1, 1, 1))) {
                paRef.UpdateComboCount();
            }
        }
    }

    private IEnumerator DestroySpikes()
    {
        yield return new WaitForSeconds(0.2f);
        gameObject.GetComponent<MeshRenderer>().enabled = true;
        spikes.SetActive(true);
        yield return new WaitForSeconds(2.0f);
        Destroy(gameObject);
    }
}
