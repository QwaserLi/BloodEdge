using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth
{
    int health = 100;
    Player playerRef;

    public PlayerHealth(Player p)
    {
        playerRef = p;
    }

    //
    public void Run()
    {
        if (!playerRef.isDead) {

        }
    }

    // Method to call if player is hit
    public void Hit(int damage)
    {
        health -= damage;
        if (health <= 0) {
            playerRef.isDead = true;
        }
    }
}
