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
    static Animator anim;
    public int currentWeapon = 0; // 0 Scythe, 1 Magic
    public float attackTimer = 0;

    bool inCombo = false;
    bool leftSwipe = true;

    float comboCount = 0;
    float comboTimer = 5.0f;
    Coroutine courComboRef;

    // Weapons
    public GameObject BloodBall;
    public GameObject Scythe;
    public GameObject HandEffect;
    public GameObject Spikes;
    BoxCollider sbc;
    List<int> comboInputs;
    string comboString = "";
    Dictionary<string, Combos> allCombos;
    int currentComboNum;

    /*
     *  Sort out references
     **/
    void Start() {
        anim = GetComponent<Animator>();
        sbc = Scythe.GetComponent<BoxCollider>();
        comboInputs = new List<int>();
        allCombos = new Dictionary<string, Combos>();
        allCombos.Add("0", new Slash());
        allCombos.Add("00", new OtherSlash());
        allCombos.Add("000", new BackHand());
        allCombos.Add("1", new BackHand());
        allCombos.Add("11", new OtherSlash());
        allCombos.Add("111", new BackHand());
        allCombos.Add("01", new BackHand());
        allCombos.Add("10", new BackHand());
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
                canAttack = false;
                SpecialScytheAttack();
                specialScytheAttackCharge = 0;
            } else if(currentWeapon == 1 && specialMagicAttackCharge >= 100) {
                canAttack = false;
                anim.ResetTrigger("SpecialMagic");
                anim.SetTrigger("SpecialMagic");
                specialMagicAttackCharge = 0;
            }
        } else if (Input.GetAxisRaw("Fire1") > 0 && canAttack) {  // Basic Attack
            if (courComboRef != null) {
                StopCoroutine(courComboRef);
            }
            canAttack = false;
            if (currentWeapon == 0) {
                DoWeakAttack();
            } else {
                anim.ResetTrigger("BasicMagic");
                anim.SetTrigger("BasicMagic");
            }
        } else if (Input.GetAxisRaw("Fire2") > 0 && canAttack) { // Strong Attack
            if (courComboRef != null) {
                StopCoroutine(courComboRef);
            }
            canAttack = false;
            if (currentWeapon == 0) {
                DoStrongAttack();
            } else {
                anim.ResetTrigger("StrongMagic");
                anim.SetTrigger("StrongMagic");
            }
        }
        print(anim.GetInteger("CurrentCombo"));
    }

    public void DoWeakAttack()
    {
        if (currentComboNum == 3) {
            currentComboNum = 0;
            comboString = "";
        }

        if (currentComboNum == 0) {
            anim.SetInteger("CurrentCombo", 0);
        } else if (currentComboNum == 1) {
            if (comboString == "0") {
                anim.SetInteger("CurrentCombo", 100);
            } else if (comboString == "1") {
                anim.SetInteger("CurrentCombo", 101);
            }
        }else if (currentComboNum == 2) {
            if (comboString == "00") {
                anim.SetInteger("CurrentCombo", 102);
            } else if (comboString == "11") {
                anim.SetInteger("CurrentCombo", 103);
            } else if (comboString == "01") {
                anim.SetInteger("CurrentCombo", 104);
            } else if (comboString == "10") {
                anim.SetInteger("CurrentCombo", 105);
            }
        }
        comboString += 0;
        currentComboNum++;
    }

    public void DoStrongAttack()
    {
        if (currentComboNum == 3) {
            currentComboNum = 0;
            comboString = "";
        }

        if (currentComboNum == 0) {            
            anim.SetInteger("CurrentCombo", 1);
        } else if (currentComboNum == 1) {
            if (comboString == "0") {
                anim.SetInteger("CurrentCombo", 2);
            } else if (comboString == "1") {
                anim.SetInteger("CurrentCombo", 3);            
            } 
        } else if (currentComboNum == 2) {
            if (comboString == "00") {
                anim.SetInteger("CurrentCombo", 4);
            } else if (comboString == "11") {
                anim.SetInteger("CurrentCombo", 5);
            } else if (comboString == "01") {
                anim.SetInteger("CurrentCombo", 6);
            } else if (comboString == "10") {
                anim.SetInteger("CurrentCombo", 7);
            }
        }
        comboString += 1;
        currentComboNum++;
    }
    
    // Allows the player to attack again
    public void ResetAttack()
    {
        print("Reset");
        //anim.SetInteger("CurrentCombo", -1);
        canAttack = true;
        courComboRef = StartCoroutine(StartComboCoolDown());
    }

    IEnumerator StartComboCoolDown()
    {
        yield return new WaitForSeconds(0.75f);
        //comboInputs = new List<int>();
        BackToPlayerIdle();
    }

    public void BackToPlayerIdle()
    {
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
        //leftSwipe = true;
        comboCount = 0;
        //currentComboNum = 0;
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
