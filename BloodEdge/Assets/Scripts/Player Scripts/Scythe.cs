using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;
using Cinemachine;
using UnityEngine.Rendering.PostProcessing;

public class Scythe : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shaker;
    AudioManager soundManager;
    public GameObject trail;
    float currentDamageToDeal = 35;
    PostProcessVolume postPro;

    private void Start()
    {
        postPro = GameObject.FindGameObjectWithTag("ScreenPostPro").GetComponent<PostProcessVolume>();
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
        if (collider.tag == "Attackable") {          
            if(collider.GetComponent<IHittable>().Hit(currentDamageToDeal, new Vector3(1, 1, 1))) {
                shaker.GenerateImpulse();
                int ran = Random.Range(0, 100);
                if (currentDamageToDeal > 35 && ran <= 15) { // Combo finisher
                    //StartCoroutine(SlowTime());
                }                
                paRef.UpdateComboCount();
            }
        }
    }


    public IEnumerator SlowTime()
    {
        Time.timeScale = 0.3f;
        Vignette v;
        postPro.profile.TryGetSettings(out v);
        if (v != null) {
            v.active = true;
            v.color.value = new Color(0,0,0);
        }
        yield return new WaitForSeconds(0.4f);
        if (v != null) {
            v.color.value = new Color(152, 0, 0);
            v.active = false;
        }        
        Time.timeScale = 1.0f;
    }
}
