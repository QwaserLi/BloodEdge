using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    EnemyHealth enemyHealth;
    EnemyAttack enemyAttack;
    EnemyMovement enemyMovement;
    public bool isDead;
    public Rigidbody enemyBody;
    public Animator anim;

    void Awake()
    {
        enemyBody = GetComponent<Rigidbody>();
        anim = GetComponent<Animator>();
        Initialize();
    }
    
    public void Initialize()
    {
        enemyHealth = new EnemyHealth(this);
        enemyAttack = new EnemyAttack(this);
        enemyMovement = new EnemyMovement(this, enemyBody);
    }

    public void Run()
    {
        enemyHealth.Run();
        enemyAttack.Run();
        enemyMovement.Run();
    }


}
