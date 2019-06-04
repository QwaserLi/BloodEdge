using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LockedZone : MonoBehaviour
{
    public GameObject[] risingObjects;
    public float zoneActivationTimer;
    public float riseSpeed;
    public float riseHeight;

    bool move;
    float t = 0.0f;
    Vector3 startPosition;
    Vector3[] startingPositions;

    // Update is called once per frame
    void Update()
    {
        if (move)
        {
            for (int i = 0; i < startingPositions.Length; i++)
            {
                if (t <= 1)
                {
                    Vector3 pos = startingPositions[i];
                    risingObjects[i].transform.position = Vector3.Lerp(pos, pos + new Vector3(0, riseHeight, 0), t); // Move objectToMove closer to b
                }
            }
            if (t <= 1)
                t += riseSpeed * Time.deltaTime;
        }

        //When all enemies are killed removed the walss by destroying for now
        //Need to ask Mat there's a way to tell if enemies have been destroyed
        if (false)
        {
            Destroy(gameObject);
        }

    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            StartCoroutine(RiseObjects());
        }
    }

    IEnumerator RiseObjects()
    {
        if (risingObjects.Length == 0) {
            yield break;
        }
        startingPositions = new Vector3[risingObjects.Length];
        for (int i = 0; i < risingObjects.Length; i++)
        {
            startingPositions[i] = risingObjects[i].transform.position;

        }
        yield return new WaitForSeconds(zoneActivationTimer);
        move = true;
   
    }


    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        var pos = transform.position;
        var size = 1f;
        Gizmos.DrawSphere(pos, size);
    }
}
