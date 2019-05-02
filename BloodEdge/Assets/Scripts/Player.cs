using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{

    PlayerHealth playerHealth;
    PlayerAttack playerAttack;
    PlayerMovement playerMovement;
    public bool isDead;

    Rigidbody playerBody;

    // Start is called before the first frame update
    void Awake()
    {
        playerBody = GetComponent<Rigidbody>();
        Initialize();
    }

    // Update is called once per frame
    // void Update() {}

    public void Initialize()
    {
        print("Creating Player");
        playerHealth = new PlayerHealth(this);
        playerAttack = new PlayerAttack(this);
        playerMovement = new PlayerMovement(this, playerBody);
    }

    public void Run()
    {
        print("Running");
        playerHealth.Run();
        playerAttack.Run();
        playerMovement.Run();        
    }
}
