using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossHammerScript : MonoBehaviour {
	private Rigidbody _rigidbody;
	[SerializeField] private BossHammerScript otherHammer;
	
    void Start() {
	    _rigidbody = GetComponent<Rigidbody>();

    }
    
    void Update()
    {
        
    }
}
