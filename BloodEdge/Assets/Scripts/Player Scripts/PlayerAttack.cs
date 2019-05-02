using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack
{

    Player playerRef;
    bool canAttack = true;
    float attackTimer = 0;

    public PlayerAttack(Player p)
    {
        playerRef = p;
    }

    // Main Loop
    public void Run()
    {
        attackTimer += Time.deltaTime;
        if (attackTimer > 1f) {
            canAttack = true;
        }

        if (Input.GetAxisRaw("Fire1") > 0 && canAttack) {
            playerRef.anim.SetTrigger("Weapon1_BasicAttack");
            attackTimer = 0;
            canAttack = false;
        }

        if (Input.GetAxisRaw("Fire2") > 0 && canAttack) {
            playerRef.anim.SetTrigger("Weapon1_StrongAttack");
            attackTimer = 0;
            canAttack = false;
        }
    }
}
