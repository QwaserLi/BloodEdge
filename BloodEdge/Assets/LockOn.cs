﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class LockOn : MonoBehaviour
{
    public CinemachineTargetGroup CTG;
    public GameObject ThirdPersonCam;
    public GameObject LockOnCamera;

    public static bool LockedOn;

    private GameObject lockedOnEnemy;

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        // Lock On to closest enemy rather than random enemy
    }

    private void lockOn(GameObject enemy)
    {
        CTG.m_Targets[1].target = enemy.transform;
        lockedOnEnemy = enemy;
        LockedOn = true;
    }

    private void lockOff()
    {
        CTG.m_Targets[1].target = null;
        lockedOnEnemy = null;
        LockedOn = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        //Press button to lock on 
        GameObject enemy = other.gameObject;
        if (enemy.tag == "Attackable")
        {
            print("HI");

            if (Input.GetKeyDown(KeyCode.Z))
            {
                if (GameObject.ReferenceEquals(enemy, lockedOnEnemy))
                {
                    lockOff();
                }
                else
                {
                    lockOn(enemy);
                }
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        //Press button to lock on 
        GameObject enemy = other.gameObject;
        if (enemy.tag == "Attackable")
        {

            if (Input.GetKeyDown(KeyCode.Z))
            {
                if (GameObject.ReferenceEquals(enemy, lockedOnEnemy))
                {
                    lockOff();
                }
                else
                {
                    lockOn(enemy);
                }
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        GameObject enemy = other.gameObject;
        if (enemy.tag == "Attackable")
        {
            if (lockedOnEnemy != null)
                if (GameObject.ReferenceEquals(enemy, lockedOnEnemy))
                {
                    lockOff();
                }
        }
    }
}
