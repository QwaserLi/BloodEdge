using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

public class BossManagerScript : MonoBehaviour {
	
	[SerializeField] private Vector2 arenaSize;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnDrawGizmos() {
	    Gizmos.color = new Color(1f, 0.7f, 0.7f);
	    Gizmos.DrawWireCube(transform.position + Vector3.up * 8f, new Vector3(arenaSize.x, 16f, arenaSize.y));
    }
}
