using Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth: MonoBehaviour, IHittable
{
    public float currentHealth = 100;
    public float maxHealth = 100;
    public static bool isDead = false;

    //
    public void Update()
    {
        
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
    public void Hit(float damage)
    {
        currentHealth -= (damage / maxHealth)*100;
        if (currentHealth <= 0) {
            isDead = true;
        }
    }
}
