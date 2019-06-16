using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;
using Cinemachine;
using UnityEngine.Rendering.PostProcessing;

/**
 *  The class on the players scythe 
 **/
public class Scythe : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shaker;
    AudioManager soundManager;
    public GameObject trail;
    float currentDamageToDeal = 35;
    PostProcessVolume postPro;

    /**
     *  Set up refs 
     **/
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

    /**
     *  Damage on collision, update counter if hit was successful 
     **/
    public void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Attackable") {
            // Check if uwas successful 
            if (collider.GetComponent<IHittable>().Hit(currentDamageToDeal, new Vector3(1, 1, 1))) {
                shaker.GenerateImpulse();
                int ran = Random.Range(0, 100);
                if (currentDamageToDeal > 35 && ran <= 15) { // Combo finisher
                    //StartCoroutine(SlowTime());
                }                
                paRef.UpdateComboCount();
            }
        }
    }

    /**
     *  Used to simulate a final blow, slow down effect. Should be called if the last enemy is killed
     **/
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
