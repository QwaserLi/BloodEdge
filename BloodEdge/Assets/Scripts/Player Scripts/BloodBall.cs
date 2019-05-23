using System.Collections;
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
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Attackable") {            
            other.GetComponent<IHittable>().Hit(5, new Vector3(1, 1, 1));
            paRef.UpdateComboCount();
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
