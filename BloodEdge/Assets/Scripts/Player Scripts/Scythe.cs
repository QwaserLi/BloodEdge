using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Enemy;

public class Scythe : MonoBehaviour
{
    PlayerAttack paRef;
    float currentDamageToDeal = 30;

    private void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
    }

    public void UpdateDamage(float amt)
    {
        currentDamageToDeal = amt;
    }

    public void OnTriggerEnter(Collider collider)
    {
        if (collider.tag == "Attackable") {
            print("Scythe Hit");
            collider.GetComponent<IHittable>().Hit(currentDamageToDeal, new Vector3(1, 1, 1));
            paRef.UpdateComboCount();
        }
    }
    
    /*
    public void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag == "Attackable") {
            print("Scythe Hit");
            paRef.UpdateComboCount();
			collision.collider.GetComponent<IHittable>().Hit(100f);
        }
    }
    */
}
