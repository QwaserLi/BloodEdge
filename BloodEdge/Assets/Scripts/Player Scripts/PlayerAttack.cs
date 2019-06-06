using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

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
    Coroutine courComboNameRef;

    // Weapons
    public GameObject BloodBall;
    public GameObject Scythe;
    public GameObject HandEffect;
    public GameObject Spikes;
    public GameObject BloodBeam;
    BoxCollider sbc;
    GameObject trail;

    public TextMeshProUGUI comboName;

    string comboString = "";
    int comboValue = 0;
    int currentComboNum;

    AudioManager soundManager;

    PlayerController pMove;

    /*
     *  Sort out references
     */
    void Start() {
        anim = GetComponent<Animator>();
        sbc = Scythe.GetComponent<BoxCollider>();
        soundManager = GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>();
        pMove = gameObject.GetComponent<PlayerController>();
        trail = Scythe.GetComponent<Scythe>().trail;
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

        if ((Input.GetAxisRaw("Fire1") > 0 || Input.GetAxisRaw("Fire2") > 0) && canAttack && pMove.inAir && currentWeapon == 0) {
            //isAttacking = true;
            //canAttack = false;
            //anim.SetBool("AttackInAir", true);
        } else if (Input.GetButtonDown("Special") && canAttack && !pMove.inAir) {
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
        } else if (Input.GetAxisRaw("Fire1") > 0 && canAttack) {  // Basic Attack            
            PrepareNextAttack();
            if (currentWeapon == 0) {
                PerformScytheAttack(-1);
            } else {
                isAttacking = true;
                anim.SetTrigger("BasicMagic");
            }
        } else if (Input.GetAxisRaw("Fire2") > 0 && canAttack) { // Strong Attack
            PrepareNextAttack();
            if (currentWeapon == 0) {
                PerformScytheAttack(1);
            } else {
                isAttacking = true;
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
        if (currentComboNum == 3) { // Max combo sequence is 3
            //print("Time For new Combo");
            comboValue = 0;
            comboString = "";
            currentComboNum = 0;
            anim.SetBool("NewComboStart", true);
        } else if (currentComboNum == 2) { // Cannot end the combo on a weak attack, unless in an only weak combo  
            if (type == -1 && comboString != "Weak+Weak") {
                comboValue = 0;
                comboString = "";
                currentComboNum = 0;
                anim.SetBool("NewComboStart", true);
            }            
        }       
        isAttacking = true;
        ActivateScytheCollider();
        if (soundManager != null) {
            soundManager.Play("ScytheMiss");
        }
        comboValue += type;
        anim.SetInteger("CurrentCombo", comboValue);
        anim.SetInteger("ComboLength", currentComboNum);
        // Add to combo
        if (currentComboNum > 0) {
            comboString += "+";
        }
        if (type < 0) {
            comboString += "Weak";
        } else {
            comboString += "Strong";
        }
        currentComboNum++;
        // Update Combo Text
        if (courComboNameRef != null) {
            StopCoroutine(courComboNameRef);
        }
        if (currentComboNum == 3) {
            switch (comboString) {
                case "Weak+Weak+Weak":
                    courComboNameRef = StartCoroutine(UpdateComboName("Demonic  Tempest"));
                    break;
                case "Weak+Weak+Strong":
                    courComboNameRef = StartCoroutine(UpdateComboName("Bloody Swipes"));
                    break;
                case "Weak+Strong+Strong":
                    courComboNameRef = StartCoroutine(UpdateComboName("Revengeful Ripper"));
                    break;
                case "Strong+Strong+Strong":
                    courComboNameRef = StartCoroutine(UpdateComboName("Crimson Crusher"));
                    break;
                case "Strong+Weak+Strong":
                    courComboNameRef = StartCoroutine(UpdateComboName("Scarlet Butterfly"));
                    break;
            }
        } else {
            courComboNameRef = StartCoroutine(UpdateComboName(comboString));
        }
    }

    IEnumerator UpdateComboName(string name)
    {
        comboName.text = name;
        yield return new WaitForSeconds(1.3f);
        comboName.text = "";
    }
    
    // Allows the player to attack again
    public void ResetAttack()
    {
        courComboRef = StartCoroutine(StartComboCoolDown());
        anim.SetBool("NewComboStart", false);
        canAttack = true;
    }

    /*
     * If enough time passes with no player input the combo will end and the player will go back to idle
     * */
    IEnumerator StartComboCoolDown()
    {
        yield return new WaitForSeconds(0.3f);
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
        anim.SetInteger("ComboLength", 0);
        comboValue = 0;
        comboString = "";
        anim.SetInteger("CurrentCombo", 9999);
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
