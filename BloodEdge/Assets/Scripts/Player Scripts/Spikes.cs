using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;

public class Spikes : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;

    // Start is called before the first frame update
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();
        shakeSource.GenerateImpulse();
        StartCoroutine(DestroySpikes());
    }
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Attackable") {
            print("hit");
            other.GetComponent<IHittable>().Hit(20, new Vector3(1,1,1));
            paRef.UpdateComboCount();
        }
    }
    /*
    public void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Attackable") {
            print("Hit");
            paRef.UpdateComboCount();
        }
    }
    */
    private IEnumerator DestroySpikes()
    {
        while (gameObject.transform.localScale.y < 2.0f) {
            gameObject.transform.localScale = new Vector3(gameObject.transform.localScale.x, gameObject.transform.localScale.y * 1.40f, gameObject.transform.localScale.z);
            yield return new WaitForSeconds(0.1f);
        }
        yield return new WaitForSeconds(2.0f);
        Destroy(gameObject);
    }
}
