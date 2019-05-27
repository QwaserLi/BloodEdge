using Cinemachine;
using Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BloodBeam : MonoBehaviour
{
    PlayerAttack paRef;
    CinemachineImpulseSource shakeSource;

    // Start is called before the first frame update
    void Start()
    {
        paRef = GameObject.FindGameObjectWithTag("Player").GetComponent<PlayerAttack>();
        shakeSource = GetComponent<CinemachineImpulseSource>();        
    }

    private void Update()
    {        
        shakeSource.GenerateImpulse();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Attackable") {
            other.GetComponent<IHittable>().Hit(25, new Vector3(1, 1, 1));
            paRef.UpdateComboCount();
        }
    }
}
