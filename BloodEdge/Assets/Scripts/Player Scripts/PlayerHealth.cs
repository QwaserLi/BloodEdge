using Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth: MonoBehaviour, IHittable
{
    public float currentHealth = 100;
    public float maxHealth = 100;
    public bool invincible = false;
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
        if (invincible) { // Prevents the player from being 1 shot
            return;
        }
        currentHealth -= (damage / maxHealth)*100;
		UpdateHealth.currentHealth = currentHealth;		
        if (currentHealth <= 0) {
            isDead = true;
            anim.CrossFade("Dying", 0.2F, 0, 0.2f);
            panel.SetActive(true);
            Cursor.visible = true;
		}
		else
		{
			StartCoroutine(MakePlayerInvincible());
		}
    }

    IEnumerator MakePlayerInvincible()
    {
        invincible = true;
        yield return new WaitForSeconds(0.5f);
        invincible = false;
    }
}
