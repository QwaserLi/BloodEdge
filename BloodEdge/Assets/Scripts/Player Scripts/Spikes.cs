using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;

public class Spikes : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;
    GameObject parent;

    float amtToIncrease = 2.2f;

    // Start is called before the first frame update
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();
        shakeSource.GenerateImpulse();
        parent = gameObject.transform.parent.gameObject;
        //gameObject.transform.Rotate(-90,0,0);
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
        while (parent.transform.localScale.y < 5.0f) {
            parent.transform.localScale = new Vector3(parent.transform.localScale.x, parent.transform.localScale.y + amtToIncrease, parent.transform.localScale.z);
            amtToIncrease *= 0.8f;
            yield return new WaitForSeconds(0.05f);
        }
        yield return new WaitForSeconds(2.0f);
        Destroy(parent);
    }
}
