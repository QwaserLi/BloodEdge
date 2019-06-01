using Enemy;
using System;
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
    PlayerController pc;
    public Image healthBar;
    public GameObject lastCheckpoint;

    public void Start()
    {
        isDead = false;
        anim = GetComponent<Animator>();
        pc = GetComponent<PlayerController>();
        pc.controller.enabled = false;
        if (lastCheckpoint == null) {
            Checkpoint[] chp = FindObjectsOfType<Checkpoint>();
            foreach (Checkpoint c in chp) {
                if (c.starter) {
                    lastCheckpoint = c.gameObject;
                    break;
                }
            }
        } 
        if (lastCheckpoint != null) {
            gameObject.transform.position = lastCheckpoint.transform.position;
        }       
        currentHealth = maxHealth;
        isDead = false;
        healTimer = 0;
        panel.SetActive(false);
        Cursor.visible = true;
        pc.controller.enabled = true;
    }

    //
    public void Update()
    {
        if (isDead) {
            return;
        }
        if (Input.GetKey("k")) {
            Hit(20000, new Vector3());
        }

        healTimer += Time.deltaTime;
        if (healTimer > 0.2f) {
            Heal(increaseBy*=2);
            healTimer = 0;
        }
        float healthPer = (currentHealth / maxHealth);
        healthBar.fillAmount = healthPer;
    }

    public void Respawn()
    {
        pc.controller.enabled = false;
        if (lastCheckpoint != null) {
            gameObject.transform.position = lastCheckpoint.transform.position;
        }
        currentHealth = maxHealth;
        isDead = false;
        healTimer = 0;
        panel.SetActive(false);
        Cursor.visible = true;
        anim.SetTrigger("Alive");
        pc.controller.enabled = true;
    }

    public void SetCheckpoint(GameObject checkPoint)
    {
        lastCheckpoint = checkPoint;
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
    public bool Hit(float damage, Vector3 force)
    {
        if (invincible) { // Prevents the player from being 1 shot
            return false;
        }
        healTimer = -3.0f;
        currentHealth -= (damage / maxHealth)*100;
		UpdateHealth.currentHealth = currentHealth;		
        if (currentHealth <= 0) {
            isDead = true;
            anim.SetTrigger("Died");
            panel.SetActive(true);
            Cursor.visible = true;
		}
		else
		{
			StartCoroutine(MakePlayerInvincible());
		}

        return true;
    }

    IEnumerator MakePlayerInvincible()
    {
        invincible = true;
        yield return new WaitForSeconds(0.5f);
        invincible = false;
    }
}
