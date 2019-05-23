using Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth: MonoBehaviour, IHittable
{
    public float currentHealth = 100;
    public float maxHealth = 100;
    public GameObject panel;
    public static bool isDead = false;
    Animator anim;

    public void Start()
    {
        isDead = false;
        anim = GetComponent<Animator>();
    }

    //
    public void Update()
    {
        if (isDead) {
            return;
        }
        //Hit(1, new Vector3());
    }

    /**
     *  Heal the player 
     **/
    public void Heal(float amt)
    {
        if (currentHealth + amt > maxHealth) {
            currentHealth = maxHealth;
        } else {
            currentHealth += amt;
        }
    }

    // Method to call if player is hit
    public void Hit(float damage, Vector3 force)
    {
        currentHealth -= (damage / maxHealth)*100;
        print(currentHealth);
        if (currentHealth <= 0) {
            isDead = true;
            anim.CrossFade("Dying", 0.2F, 0, 0.2f);
            panel.SetActive(true);
            Cursor.visible = true;
        }
    }
}
