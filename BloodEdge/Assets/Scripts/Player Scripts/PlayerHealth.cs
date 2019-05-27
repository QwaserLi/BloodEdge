using Enemy;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth: MonoBehaviour, IHittable
{
    public float currentHealth = 100;
    public float maxHealth = 100;
    public static float healTimer = 0;
    float increaseBy = 1; // Used to scale health regen overtime
    public bool invincible = false;
    public GameObject panel;
    public static bool isDead = false;
    Animator anim;
    public Image healthBar;

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
        healTimer += Time.deltaTime;
        if (healTimer > 0.2f) {
            Heal(increaseBy*=2);
            healTimer = 0;
        }
        float healthPer = (currentHealth / maxHealth);
        healthBar.fillAmount = healthPer;
    }

    /**
     *  Heal the player 
     **/
    public void Heal(float amt)
    {
        if (currentHealth + amt > maxHealth) {
            currentHealth = maxHealth;
            increaseBy = 1;
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
        healTimer = -3.0f;
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
