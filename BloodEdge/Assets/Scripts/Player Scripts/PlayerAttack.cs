using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack: MonoBehaviour
{
    bool canAttack = true;
    public static bool isAttacking = false;
    float specialMagicAttackCharge = 0;
    float specialScytheAttackCharge = 0;

    float weaponChangeTimer = 0;
    float specialChargeTimer = 0;
    static Animator anim;
    public int currentWeapon = 0; // 0 Scythe, 1 Magic
    public float attackTimer = 0;

    bool inCombo = false;

    float comboCount = 0;
    float comboTimer = 5.0f;
    Coroutine courComboRef;

    // Weapons
    public GameObject BloodBall;
    public GameObject Scythe;
    public GameObject HandEffect;
    public GameObject Spikes;
    public GameObject BloodBeam;

    BoxCollider sbc;
    string comboString = "";
    int currentComboNum;

    /*
     *  Sort out references
     */
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
            UpdateRedBar(5);
            UpdateBlueBar(5);
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
                isAttacking = true;
                canAttack = false;
                SpecialScytheAttack();
                specialScytheAttackCharge = 0;
            } else if(currentWeapon == 1 && specialMagicAttackCharge >= 100) {
                isAttacking = true;
                canAttack = false;
                anim.SetTrigger("MagicSpecial");
                specialMagicAttackCharge = 0;
            }
        } else if (Input.GetAxisRaw("Fire1") > 0 && canAttack && (comboString == "" || comboString.Contains("0"))) {  // Basic Attack            
            PrepareNextAttack();
            if (currentWeapon == 0) {
                PerformScytheAttack(0);
            } else {
                anim.SetTrigger("BasicMagic");
            }
        } else if (Input.GetAxisRaw("Fire2") > 0 && canAttack && (comboString == "" || comboString.Contains("1"))) { // Strong Attack
            PrepareNextAttack();
            if (currentWeapon == 0) {
                PerformScytheAttack(1);
            } else {
                anim.SetTrigger("StrongMagic");
            }
        }
    }

    /**
     *  Sets booleans to let the program know it is attacking, and stops any courtines that would end the current combo,
     *  as this attack may be continuing the combo
     **/
    public void PrepareNextAttack()
    {
        isAttacking = true;
        if (courComboRef != null) {
            StopCoroutine(courComboRef);
        }
        canAttack = false;
    }

    /*
     * Performs an attack with the scythe. The type of attack, weak or strong, is passed through
     * */
    public void PerformScytheAttack(int type)
    {
        // * TEMP method until Anims are done and we know all the combos* 
        // Will Reset back to idle animations if we have completed a string of 3 combos, or if the input does not continue a viable combo (
        // Say they try end on a weak attack, when you can only end on a strong attack
        if (currentComboNum == 3 || !comboString.Contains(type.ToString())) { 
            BackToPlayerIdle();
        }
        isAttacking = true;
        ActivateScytheCollider();
        if (type == 0) { // Weak
            if (currentComboNum == 0) {
                anim.SetInteger("CurrentCombo", 0);
            } else if (currentComboNum == 1) {
                anim.SetInteger("CurrentCombo", 100);
            } else if (currentComboNum == 2) {
                anim.SetInteger("CurrentCombo", 102);
            }
        } else { // Strong
            if (currentComboNum == 0) {
                anim.SetInteger("CurrentCombo", 1);
            } else if (currentComboNum == 1) {
                anim.SetInteger("CurrentCombo", 3);
            } else if (currentComboNum == 2) {
                anim.SetInteger("CurrentCombo", 5);
            }
        }        
        // Add to combo
        comboString += type;
        currentComboNum++;
    }
    
    // Allows the player to attack again
    public void ResetAttack()
    {
        print("Reset");
        canAttack = true;
        courComboRef = StartCoroutine(StartComboCoolDown());
    }

    /*
     * If enough time passes with no player input the combo will end and the player will go back to idle
     * */
    IEnumerator StartComboCoolDown()
    {
        yield return new WaitForSeconds(0.5f);
        BackToPlayerIdle();
    }

    /*
     * Resets the player back to idle 
     **/
    public void BackToPlayerIdle()
    {
        Scythe.GetComponent<Scythe>().trail.SetActive(false);
        isAttacking = false;
        DeactivateScytheCollider();
        currentComboNum = 0;
        comboString = "";
        anim.SetInteger("CurrentCombo", -1);
    }

    /**
     *  Method to reset variables once a combo is over
     */
    void NoLongerInCombo ()
    {        
        inCombo = false;
        comboCount = 0;
        //currentComboNum = 0;
        UpdateComboMeter.UpdateComboTimer(5.0f);
        UpdateComboMeter.UpdateComboNumber(comboCount);
    }

    /**
     * Activates collider when called by animation
     * */
    public void ActivateScytheCollider()
    {
        sbc.enabled = true;
    }
    
    /**
     * Deactivates collider when called by animation
     * */
    public void DeactivateScytheCollider()
    {
        sbc.enabled = false;
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
     * Strong Scythe Attack
     * */
    void StrongMagicAttack()
    {        
        Instantiate(Spikes, transform.position + (transform.forward * 4.5f), transform.localRotation);
    }

    /**
     * Plays Scythe Special animation
     * */
    void SpecialScytheAttack()
    {
        anim.SetTrigger("ScytheSpecial");
        StartCoroutine(ChangeBoxSize());
    }

    /**
     * Changes the scythes colliders to be way bigger for the special animation, then resets after a few seconds
     * */
    IEnumerator ChangeBoxSize()
    {
        ActivateScytheCollider();
        Scythe.GetComponent<BoxCollider>().size = Scythe.GetComponent<BoxCollider>().size *= 3;
        yield return new WaitForSeconds(3.0f);
        Scythe.GetComponent<BoxCollider>().size = Scythe.GetComponent<BoxCollider>().size /= 3;
        ResetAttack();
    }

    /*
     * Starts magics special attack
     * */
    void SpecialMagicAttack()
    {
        StartCoroutine(DoMagicSpecial());        
    }

    /**
     *  Activates the "Bloodbeam" for a couple seconds, then deactivates it and allows the player to attack aggain
     **/
    IEnumerator DoMagicSpecial()
    {
        BloodBeam.SetActive(true);
        yield return new WaitForSeconds(2.5f);
        BloodBeam.SetActive(false);
        ResetAttack();
    }

    /*
     * Updates the combo counter
     * */
    public void UpdateComboCount()
    {
        inCombo = true;
        comboCount++;
        comboTimer = 0;
        UpdateComboMeter.UpdateComboTimer(comboTimer);
        UpdateComboMeter.UpdateComboNumber(comboCount);
    }

    /*
     * Update the Scythe Special Bar
     * */
    public void UpdateRedBar(float amt)
    {
        if (specialScytheAttackCharge + amt < 100) {
            specialScytheAttackCharge += amt;
        } else {
            specialScytheAttackCharge = 100;
        }        
        UpdateCharge.currentRedCharge = specialScytheAttackCharge;
    }

    /*
     * Update the Magic Special Bar
     * */
    public void UpdateBlueBar(float amt)
    {
        if (specialMagicAttackCharge + amt < 100) {
            specialMagicAttackCharge += amt;
        } else {
            specialMagicAttackCharge = 100;
        }
        UpdateCharge.currentBlueCharge = specialMagicAttackCharge;
    }
}
