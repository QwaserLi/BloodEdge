using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement
{
    public float speed = 6f;
    public Vector3 movement;
    public bool isMoving = false;
    public bool isRunning = false;
    public float xValue;
    public float zValue;
    Rigidbody playerBody;
    Player playerRef;

    public PlayerMovement(Player p, Rigidbody r)
    {
        playerRef = p;
        playerBody = r;
    }

    //
    public void Run()
    {
        float h = Input.GetAxisRaw("Horizontal");
        float v = Input.GetAxisRaw("Vertical");
        movePlayer(h, v);
    }

    /**
     * Function to move the player
     **/
    private void movePlayer(float h, float v)
    {
        if (h != movement.x || v != movement.z) {
            isMoving = true;
        } else {
            isMoving = false;
        }
        playerRef.anim.SetBool("IsWalking", isMoving);
        xValue = h;
        zValue = v;
        movement.Set(h, 0f, v);
        movement = movement.normalized * speed * Time.deltaTime;
        playerBody.MovePosition(playerRef.transform.position + movement);
    }
}
