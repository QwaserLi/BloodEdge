using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public int speed;
    public float jumpHeight;
    public float rollDistance;
    public Vector3 Drag;

    [HideInInspector]
    public CharacterController controller;


    private Animator anim;
    private Camera cam;
    private float gravity;
    private Vector3 velocity;
    private Vector3 previousVelocity;
    private Vector3 desiredMoveDirection;

    AudioManager soundManager;

    // Animation variables
    bool isRunning = false;
    bool wasInAir = false;
    [HideInInspector]
    public bool inAir = false;


    // Start is called before the first frame update
    void Start()
    {
		//Move somewhere else
		Cursor.visible = false;
		Cursor.lockState = CursorLockMode.Locked;

		anim = GetComponent<Animator>();
        cam = Camera.main;
        controller = GetComponent<CharacterController>();
        gravity = Physics.gravity.y * 100;
        soundManager = GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {

		if (PlayerHealth.isDead) {
            return;
        }

        //Movement
        Movement();
        if (desiredMoveDirection != Vector3.zero && !wasInAir)
        {
            isRunning = true;
            if (!soundManager.IsPlaying("Running")) {
                soundManager.Play("Running");
            }            
        }
        else
        {
            isRunning = false;
            soundManager.Stop("Running");
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

        if (wasInAir == true && inAir == false)
        { // No longer in the air          
            if (PlayerAttack.isAttacking) {
                anim.SetBool("AttackInAir", false);
                soundManager.Play("AirAttackHit");
            }
            soundManager.Play("Landing");            
            anim.SetBool("InAir", false);
            wasInAir = false;
        }

        //Jumping
        if (Input.GetButtonDown("Jump"))
        {
            if (controller.isGrounded)
            {
                anim.SetTrigger("Jump");

            }

            Jump();
        }
        //Rolling
        if (Input.GetButtonDown("Roll"))
        {

            if (!(velocity.x > 0.7 || velocity.x < -0.7 || velocity.z > 0.7 || velocity.z < -0.7))
            { 
                    anim.SetTrigger("Roll");
            }

            Roll();
        }
        //Drag Force
        ApplyDrag();
    }

    void Movement()
    {
        float xMovement = Input.GetAxis("Horizontal");
        float zMovement = Input.GetAxis("Vertical");
        Vector3 forward = cam.transform.forward;
        Vector3 right = cam.transform.right;


        forward.y = 0f;
        right.y = 0f;

        desiredMoveDirection = forward * zMovement + right * xMovement;

        if (desiredMoveDirection != Vector3.zero)
        {
           // transform.forward = desiredMoveDirection;
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(desiredMoveDirection),0.5f);

        }
        if (!PlayerAttack.isAttacking) {
            controller.Move(desiredMoveDirection.normalized * Time.deltaTime * speed);
            //velocity += desiredMoveDirection.normalized * Time.deltaTime * speed;
        }else {
            controller.Move(desiredMoveDirection * Time.deltaTime * (speed*0.5f));
            //velocity += desiredMoveDirection.normalized * Time.deltaTime * speed*5;
        }
    }

    void ApplyGravity()
    {
        previousVelocity = velocity;
        velocity.y += gravity * Time.deltaTime;

        controller.Move(velocity * Time.deltaTime);
        if (controller.isGrounded && velocity.y < 0)
        {
            //Reset gravity
            gravity = Physics.gravity.y * 100;
            velocity.y = 0;
        }
        else if (!controller.isGrounded && PlayerAttack.isAttacking)
        {
            gravity = -60f;
        }

        else
        {
            gravity = -20f;
        }

        if (!controller.isGrounded && previousVelocity.y >= 0 && velocity.y < 0)
        {
            velocity.y = -5;
        }
    }

    void Jump()
    {
        if (controller.isGrounded)
        {
            gravity = -20f;
            velocity.y += Mathf.Sqrt(jumpHeight * -2f * gravity);
            //velocity.y += Time.deltaTime * jumpHeight * -2f * gravity;
        }
    }

    void Roll()
    {
        if ((velocity.x > 0.7 || velocity.x < -0.7 || velocity.z > 0.7 || velocity.z < -0.7)) {
            return;
        }

            Vector3 rollDirection;
            if (desiredMoveDirection == Vector3.zero)
            {
                rollDirection = transform.forward;
            }
            else
            {
                rollDirection = desiredMoveDirection;
            }

            velocity += Vector3.Scale(rollDirection.normalized,
                                       rollDistance * new Vector3((Mathf.Log(1f / (Time.deltaTime * Drag.x + 1)) / -Time.deltaTime),
                                                                  0,
                                                                  (Mathf.Log(1f / (Time.deltaTime * Drag.z + 1)) / -Time.deltaTime)));
        
    }

    void ApplyDrag()
    {
        velocity.x /= 3 + Drag.x * Time.deltaTime;
        velocity.y /= 1 + Drag.y * Time.deltaTime;
        velocity.z /= 1 + Drag.z * Time.deltaTime;
    }

    /**
     * Used to tell object when it is in the air
     * */
    public void InAir()
    {
        wasInAir = true;
        inAir = true;
        if (!PlayerAttack.isAttacking) {            
            anim.SetBool("InAir", true);                      
        } else {
            anim.SetBool("InAir", false);
        }
    }


}
