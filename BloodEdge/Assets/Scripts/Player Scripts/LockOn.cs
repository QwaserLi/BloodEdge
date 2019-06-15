using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;
using Enemy;
public class LockOn : MonoBehaviour
{
    public CinemachineTargetGroup CTG;
    public GameObject ThirdPersonCam;
    public GameObject LockOnCamera;
    public Transform playerPosition;

    [Space]
    public Image lockOnImage;

    public static bool LockedOn;

    public float canSwitch;

    private GameObject lockedOnEnemy;
    private List<GameObject> lockableEnemies;
    private int enemyIndex;
    // Start is called before the first frame update
    void Start()
    {
        lockableEnemies = new List<GameObject>();
        lockOnImage.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetButtonDown("Lock On"))
        {
            if (LockedOn)
            {
                lockOff();
            }
            else
            {
                // Lock On to closest enemy 
                lockOnToClosestEnemy();
            }
        }
        if (lockedOnEnemy != null)
        {
            // Enemy dying 

            if (!lockedOnEnemy.activeInHierarchy)
            {
                lockableEnemies.Remove(lockedOnEnemy);
                lockOff();
                lockOnToClosestEnemy();
            }
        }
        else {
            foreach (GameObject e in lockableEnemies) {
                if (!e.activeInHierarchy)
                {
                    lockableEnemies.Remove(lockedOnEnemy);
                }
            }
        }
        canSwitch += Time.deltaTime;
        if (LockedOn)
        {
            // Toggle between enemies
            if (Input.GetAxis("Mouse ScrollWheel") > 0f && canSwitch >= 0.5f) // forward
            {
                if (enemyIndex++ >= lockableEnemies.Count) enemyIndex = 0;
                lockOnByIndex(enemyIndex);
                canSwitch = 0.0f;
            }
            else if (Input.GetAxis("Mouse ScrollWheel") < 0f && canSwitch >= 0.5f) // backwards
            {
                if (enemyIndex-- < 0) enemyIndex = lockableEnemies.Count - 1;
                lockOnByIndex(enemyIndex);
                canSwitch = 0.0f;
            }
            lockOnImage.transform.position = Camera.main.WorldToScreenPoint(lockedOnEnemy.transform.position);
            lockOnImage.transform.localScale = new Vector3(0.5f, 0.5f, 0.5f);

        }

    }

    private void lockOnByIndex(int index)
    {
        if (index < lockableEnemies.Count && index > -1)
        {
            lockOn(lockableEnemies[index]);
        }

    }

    private void lockOnToClosestEnemy()
    {
        if (lockableEnemies.Count > 0 )
        {
            float closestDistance = Mathf.Infinity;
            Vector3 pPos = playerPosition.position;
            GameObject lockEn = lockableEnemies[0];
            for (int i = 0; i < lockableEnemies.Count; i++)
            {
                float distance = Vector3.Distance(lockableEnemies[i].transform.position, pPos);
                if (distance < closestDistance)
                {
                    closestDistance = distance;
                    lockEn = lockableEnemies[i];
                    enemyIndex = i;
                }
            }
            lockOn(lockEn);
        }
    }

    private void lockOn(GameObject enemy)
    {
        CTG.m_Targets[1].target = enemy.transform;
        lockedOnEnemy = enemy;
        LockedOn = true;
        LockOnCamera.SetActive(true);
        ThirdPersonCam.SetActive(false);
        lockOnImage.enabled = true;
    }

    private void lockOff()
    {
        CTG.m_Targets[1].target = null;
        lockedOnEnemy = null;
        LockedOn = false;
        LockOnCamera.SetActive(false);
        ThirdPersonCam.SetActive(true);
        lockOnImage.enabled = false;
        enemyIndex = -1;

    }

    private void OnTriggerEnter(Collider other)
    {
        GameObject enemy = other.gameObject;
        if (enemy.tag == "Attackable")
        {
            if (!lockableEnemies.Contains(enemy))
                lockableEnemies.Add(enemy);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        GameObject enemy = other.gameObject;
        if (enemy.tag == "Attackable")
        {
            if (!lockableEnemies.Contains(enemy))
                lockableEnemies.Add(enemy);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        GameObject enemy = other.gameObject;
        if (enemy.tag == "Attackable")
        {
            if (lockedOnEnemy != null)
            {
                if (GameObject.ReferenceEquals(enemy, lockedOnEnemy))
                {
                    lockOff();
                }
            }
            if (lockableEnemies.Contains(enemy))
            {
                lockableEnemies.Remove(enemy);
            }
        }
    }

    public Vector3 getEnemyPosition()
    {
        return lockedOnEnemy.transform.position;
    }

    public Vector3 getSoftLockTarget()
    {

      
            float closestDistance = Mathf.Infinity;
            GameObject lockEn = lockableEnemies[0];
            Vector3 pPos = playerPosition.position;
            for (int i = 0; i < lockableEnemies.Count; i++)
            {
                float distance = Vector3.Distance(lockableEnemies[i].transform.position, pPos);
                if (distance < closestDistance)
                {
                    closestDistance = distance;
                    lockEn = lockableEnemies[i];
                }
            }
            Vector3 tPos = lockEn.transform.position;
            return tPos;
        
    }

    public bool enemiesInRange() {
        if (lockableEnemies.Count >0) {
            print(lockableEnemies.Count);
            return true;
        }
        return false;
    }
}
