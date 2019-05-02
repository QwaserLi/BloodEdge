using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyAttack
{
    Enemy enemyRef;
    bool inRange = true;
    float attackTimer = 0;

    public EnemyAttack(Enemy e)
    {
        enemyRef = e;
    }

    public void Run()
    {
        attackTimer += Time.deltaTime;
        // Melee Attack
        if (attackTimer > 1f && inRange) {
            //enemyRef.anim.SetTrigger("BasicAttack");
            attackTimer = 0;
        }
    }
}
