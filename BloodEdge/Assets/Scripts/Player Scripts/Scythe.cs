using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;

public class Scythe : MonoBehaviour
{

    PlayerAttack paRef;

    private void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
    }

    /*
    public void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Attackable") {
            print("Scythe Hit");
            paRef.UpdateComboCount();
        }
    }
    */

    public void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Attackable") {
            print("Scythe Hit");
            paRef.UpdateComboCount();
			collision.collider.GetComponent<IHittable>().Hit(100f);
        }
    }
}
