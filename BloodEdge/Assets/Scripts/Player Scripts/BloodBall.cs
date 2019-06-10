﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using Enemy;

public class BloodBall : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;

    // Start is called before the first frame update
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();
        shakeSource.GenerateImpulse();
        StartCoroutine(DestroyBloodBall());
        GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("BloodBall");
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Attackable") {
            if (other.GetComponent<IHittable>().Hit(5, gameObject.transform.position)) {
                paRef.UpdateComboCount();
            }            
        }
    }

    private IEnumerator DestroyBloodBall()
    {
        while (gameObject.transform.localScale.x > 0.8f) {
            Vector3 asd = gameObject.transform.localScale;
            gameObject.transform.localScale = asd*=0.95f;
            yield return new WaitForSeconds(0.1f);
        }
        yield return new WaitForSeconds(1.0f);
        Destroy(gameObject);
    }
}
