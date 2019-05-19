using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack: MonoBehaviour
{
    bool canAttack = true;
    float specialMagicAttackCharge = 0;
    float specialScytheAttackCharge = 0;

    float weaponChangeTimer = 0;
    float specialChargeTimer = 0;
    Animator anim;
    public int currentWeapon = 0; // 0 Scythe, 1 Magic
    public float attackTimer = 0;

    bool inCombo = false;
    bool leftSwipe = true;

    float comboCount = 0;
    float comboTimer = 5.0f;

    // Weapons
    public GameObject BloodBall;
    public GameObject Scythe;
    public GameObject HandEffect;
    public GameObject Spikes;

    BoxCollider sbc;

    /*
     *  Sort out references
     **/
    void Start() {
        anim = GetComponent<Animator>();
        sbc = Scythe.GetComponent<BoxCollider>();
    }

    // Main Loop
    public void Update()
    {
        if (PlayerHealth.isDead) {
            return;
        }
        // Update Timers and check if player is still in a combo
        weaponChangeTimer += Time.deltaTime;
        comboTimer += Time.deltaTime;
        specialChargeTimer += Time.deltaTime;

        // Charge up Special Weapon
        if (specialChargeTimer > 1.0f) {
            UpdateRedBar(1);
            UpdateBlueBar(1);
            specialChargeTimer = 0;
        }

        // Update the UI
        if (comboTimer >= 5.0f) {
            NoLongerInCombo();
        } else {
            UpdateComboMeter.UpdateComboTimer(comboTimer);
        }

        // Change Weapons
        if (Input.GetAxis("Mouse ScrollWheel") != 0 && weaponChangeTimer > 0.25f) {
            if (currentWeapon == 0) {
                currentWeapon = 1;
                Scythe.SetActive(false);
                HandEffect.SetActive(true);
            } else {
                Scythe.SetActive(true);
                HandEffect.SetActive(false);
                currentWeapon = 0;
            }
            weaponChangeTimer = 0;
        }

        // Do special attack
        if (Input.GetButtonDown("Special") && canAttack) {
            if (currentWeapon == 0 && specialScytheAttackCharge >= 100) {
                anim.speed = 3.0f;
                canAttack = false;
                SpecialScytheAttack();
                specialScytheAttackCharge = 0;
            } else if(currentWeapon == 1 && specialMagicAttackCharge >= 100) {
                anim.speed = 3.0f;
                canAttack = false;
                anim.ResetTrigger("SpecialMagic");
                anim.SetTrigger("SpecialMagic");
                specialMagicAttackCharge = 0;
            }
        }

        // Basic Attack
        if (Input.GetAxisRaw("Fire1") > 0 && canAttack) {
            canAttack = false;
            if (currentWeapon == 0) {
                BasicScytheAttack();
            } else {
                anim.ResetTrigger("BasicMagic");
                anim.SetTrigger("BasicMagic");
            }
        }

        // Strong Attack
        if (Input.GetAxisRaw("Fire2") > 0 && canAttack) {
            anim.speed = 2.0f;
            canAttack = false;
            if (currentWeapon == 0) {
                StrongScytheAttack();
            } else {
                anim.ResetTrigger("StrongMagic");
                anim.SetTrigger("StrongMagic");
            }
        }
    }
    
    // Allows the player to attack again
    public void ResetAttack()
    {
        canAttack = true;
        anim.speed = 1.0f;
        leftSwipe = !leftSwipe;
    }

    /**
     *  Method to reset variables once a combo is over
     */
    void NoLongerInCombo ()
    {        
        inCombo = false;
        //leftSwipe = true;
        comboCount = 0;
        UpdateComboMeter.UpdateComboTimer(5.0f);
        UpdateComboMeter.UpdateComboNumber(comboCount);
        DeactivateScytheCollider();
    }

    /**
     * Activates collider when called by animation
     * */
    void ActivateScytheCollider()
    {
        //sbc.enabled = true;
    }
    
    /**
     * Deactivates collider when called by animation
     * */
    void DeactivateScytheCollider()
    {
        //sbc.enabled = false;
    }

    /**
     * Basic Scythe attacks. Activates the collider on the scythe and plays the animation to hit enemies
     **/
    void BasicScytheAttack()
    {
        ActivateScytheCollider();
        if (inCombo) {
            if (!leftSwipe) {
                anim.speed = 1.5f;
                anim.SetTrigger("SlashAttack");                
            } else {
                anim.speed = 1.5f;
                anim.SetTrigger("OtherSlash");
            }
        } else {
            anim.speed = 1.5f;
            anim.SetTrigger("SlashAttack");
            
        }
    }

    /**
     * Basic Magic Attack. Creates a bloodball which attracts enemies like a black hole, and damaged them. Called \
     * during the animation
     * */
    void BasicMagicAttack()
    {        
        Instantiate(BloodBall, transform.position + (transform.up*1.5f) + (transform.forward * 4.0f), transform.localRotation);
    }

    /**
     * Basic Magic Attack. Creates a bloodball which attracts enemies like a black hole, and damaged them. Called \
     * during the animation
     * */
    void StrongScytheAttack()
    {
        ActivateScytheCollider();
        anim.SetTrigger("StrongAttack");
    }

    /**
     * Strong Scythe Attack
     * */
    void StrongMagicAttack()
    {        
        Instantiate(Spikes, transform.position + (transform.forward * 4.5f), transform.localRotation);
    }

    void SpecialScytheAttack()
    {
        ActivateScytheCollider();
        anim.ResetTrigger("ScytheSpecial");
        anim.SetTrigger("ScytheSpecial");
        StartCoroutine(ChangeBoxSize());
    }

    

    IEnumerator ChangeBoxSize()
    {
        ActivateScytheCollider();
        Scythe.GetComponent<BoxCollider>().size = Scythe.GetComponent<BoxCollider>().size *= 3;
        yield return new WaitForSeconds(3.0f);
        Scythe.GetComponent<BoxCollider>().size = Scythe.GetComponent<BoxCollider>().size /= 3;
        ResetAttack();
    }

    void SpecialMagicAttack()
    {
        Instantiate(Spikes, transform.position + (transform.forward * 3.0f), transform.localRotation);
    }

    public void UpdateComboCount()
    {
        inCombo = true;
        comboCount++;
        comboTimer = 0;
        UpdateComboMeter.UpdateComboTimer(comboTimer);
        UpdateComboMeter.UpdateComboNumber(comboCount);
    }

    public void UpdateRedBar(float amt)
    {
        specialScytheAttackCharge += amt;
        UpdateCharge.currentRedCharge = specialScytheAttackCharge;
    }

    public void UpdateBlueBar(float amt)
    {
        specialMagicAttackCharge++;
        UpdateCharge.currentBlueCharge = specialMagicAttackCharge;
    }
}
