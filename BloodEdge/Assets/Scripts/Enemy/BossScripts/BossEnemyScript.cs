using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossEnemyScript : MonoBehaviour
{
	[SerializeField] private GameObject puppetObject;
	private Transform _puppetTransform;
	private Vector3 _initPuppetOffset;
	private Vector3 _puppetVelocity = new Vector3(0, 0, 0);
	private float _puppetWalkTimer;
	
	
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
