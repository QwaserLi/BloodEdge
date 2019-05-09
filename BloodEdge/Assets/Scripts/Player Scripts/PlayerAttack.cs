using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack: MonoBehaviour
{

    bool canAttack = true;
    float attackTimer = 0;
    Animator anim;


    void Start() {
        anim = GetComponent<Animator>();
    }

    // Main Loop
    public void Update()
    {

        if (Input.GetAxisRaw("Fire1") > 0 && canAttack) {
            canAttack = false;
            anim.ResetTrigger("SlashAttack");
            anim.SetTrigger("SlashAttack");
            //attackTimer = 0;
        }

        if (Input.GetAxisRaw("Fire2") > 0 && canAttack) {
            canAttack = false;
            anim.ResetTrigger("StrongAttack");
            anim.SetTrigger("StrongAttack");
            //attackTimer = 0;
        }
    }
    
    public void ResetAttack()
    {
        canAttack = true;        
    }
}
