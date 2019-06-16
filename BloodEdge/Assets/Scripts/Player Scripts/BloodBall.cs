using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using Enemy;

/**
 * Creates a bloodball which damages enemies and traps them 
 **/
public class BloodBall : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;

    /**
     * On spawn, shake the camera, play sound effect, then start the countdown to destroy the object 
     **/
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();
        shakeSource.GenerateImpulse();
        StartCoroutine(DestroyBloodBall());
        GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>().Play("BloodBall");
    }

    /**
     * On collision damage the enemy and try trap them
     **/
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Attackable") {
            if (other.GetComponent<IHittable>().Hit(5, gameObject.transform.position)) {
                paRef.UpdateComboCount();
            }            
        }
    }

    /**
     *  Shrinks the ball and then it disappears after a second 
     **/
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
