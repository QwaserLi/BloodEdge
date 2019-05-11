﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public int speed;
    public float jumpHeight;
    public float rollDistance;
    public Vector3 Drag;

    private Animator anim;
    private Camera cam;
    private CharacterController controller;
    private float gravity;
    private Vector3 velocity;
    private Vector3 desiredMoveDirection;

    // Animation variables
    bool isRunning = false;
    bool wasInAir = false;
    bool inAir = false;
    public float idleTimer;

    enum State {
        Idle,
        Running,
        Falling,

    }


    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        cam = Camera.main;
        controller = GetComponent<CharacterController>();
        gravity = Physics.gravity.y;
    }

    // Update is called once per frame
    void Update()
    {

        //Movement
        Movement();
        if (desiredMoveDirection != Vector3.zero)
        {
            isRunning = true;
        }
        else
        {
            isRunning = false;
        }

        anim.SetBool("isRunning", isRunning);

        //Apply Gravity
        ApplyGravity();

        if (controller.isGrounded)
        {
            inAir = false;
        }
        else
        {
            InAir();
        }

        if (wasInAir == true && inAir == false) { // No longer in the air
            anim.SetBool("InAir", false);
            wasInAir = false;
        }

        //Jumping
        if (Input.GetButtonDown("Jump") && controller.isGrounded)
        {
            anim.SetTrigger("Jump");
            Jump();
        }
        //Rolling
        if (Input.GetButtonDown("Roll"))
        {
            anim.SetTrigger("Roll");
            Roll();
        }
        //Drag Force
        ApplyDrag();
    }

    void Movement() {
        float xMovement = Input.GetAxis("Horizontal");
        float zMovement = Input.GetAxis("Vertical");
        Vector3 forward = cam.transform.forward;
        Vector3 right = cam.transform.right;

        forward.y = 0f;
        right.y = 0f;

        desiredMoveDirection = forward * zMovement + right * xMovement;

        if (desiredMoveDirection != Vector3.zero)
        {
            transform.forward = desiredMoveDirection;
        }

        controller.Move(desiredMoveDirection * Time.deltaTime * speed);
    }

    void ApplyGravity() {
        velocity.y += gravity * Time.deltaTime;
        controller.Move(velocity * Time.deltaTime);
        if (controller.isGrounded && velocity.y < 0)
        {
            velocity.y = 0;
        }
    }

    void Jump() {  
            velocity.y += Mathf.Sqrt(jumpHeight * -2f * gravity);
    }

    void Roll() {
            Vector3 rollDirection;
            if (desiredMoveDirection == Vector3.zero)
            {
                rollDirection = transform.forward;
            }
            else
            {
                rollDirection = desiredMoveDirection;
            }

            velocity += Vector3.Scale(rollDirection,
                                       rollDistance * new Vector3((Mathf.Log(1f / (Time.deltaTime * Drag.x + 1)) / -Time.deltaTime),
                                                                  0,
                                                                  (Mathf.Log(1f / (Time.deltaTime * Drag.z + 1)) / -Time.deltaTime)));
    }

    void ApplyDrag() {
        velocity.x /= 1 + Drag.x * Time.deltaTime;
        velocity.y /= 1 + Drag.y * Time.deltaTime;
        velocity.z /= 1 + Drag.z * Time.deltaTime;
    }
    
    /**
     * Used to tell object when it is in the air
     * */
    public void InAir()
    {
        inAir = true;
        wasInAir = true;
        anim.SetBool("InAir", inAir);
    }


}
