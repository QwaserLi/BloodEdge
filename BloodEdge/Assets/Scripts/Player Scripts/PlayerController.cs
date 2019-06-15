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

    public bool descending = false;

    private Animator anim;
    private Camera cam;
    private LockOn lockOn;
    private float gravity;
    private Vector3 velocity;
    private Vector3 previousVelocity;
    private Vector3 desiredMoveDirection;
    private Vector3 desiredRollDirection;

    AudioManager soundManager;
    PlayerAttack pAttack;

    bool isRolling;
    bool airDash;
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

        desiredRollDirection = transform.forward;

        anim = GetComponent<Animator>();
        cam = Camera.main;
        controller = GetComponent<CharacterController>();
        pAttack = GetComponent<PlayerAttack>();
        gravity = Physics.gravity.y * 100;
        soundManager = GameObject.FindGameObjectWithTag("AudioManager").GetComponent<AudioManager>();
        lockOn = GetComponentInChildren<LockOn>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {

        if (PlayerHealth.isDead)
        {
            return;
        }

        //Movement
        Movement();
        Rotation();
        if (desiredMoveDirection != Vector3.zero && !wasInAir && !PlayerAttack.isAttacking)
        {
            isRunning = true;
            if (!soundManager.IsPlaying("Running"))
            {
                soundManager.Play("Running");
            }
        }
        else
        {
            //print("hello");
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
            anim.ResetTrigger("NIA");
            anim.SetTrigger("NIA");
            wasInAir = false;
            if (PlayerAttack.isAttacking)
            {
                StartCoroutine(pAttack.EndAirAttack());
                soundManager.Play("AirAttackHit");
            } else {
                soundManager.Play("Landing");
            }
        }
        //Jumping
        if (Input.GetButtonDown("Jump"))
        {
            

            Jump();
        }

        if (isRolling && airDash && controller.isGrounded) {
            airDash = false;
            isRolling = false;
        }

        if (!(velocity.x > 0.7 || velocity.x < -0.7 || velocity.z > 0.7 || velocity.z < -0.7))
        {
            isRolling = false;
            velocity.x = 0;
            velocity.z = 0;
        }

        //Rolling
        if (Input.GetButtonDown("Roll") && !PlayerAttack.isAttacking)
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
        if (isRolling) {
            controller.Move(desiredRollDirection.normalized * Time.deltaTime * speed);
            return;
        }

        float xMovement = Input.GetAxis("Horizontal");
        float zMovement = Input.GetAxis("Vertical");
        Vector3 forward = cam.transform.forward;
        Vector3 right = cam.transform.right;

        float movementSpeed = speed;

        forward.y = 0f;
        right.y = 0f;
        desiredMoveDirection = forward * zMovement + right * xMovement;
        if (!LockOn.LockedOn)
        {
            if (desiredMoveDirection != Vector3.zero)
            {
                anim.SetFloat("RunningDirectionY", 1);

            }
        }
        else {
            if (zMovement < 0)
            {
                anim.SetFloat("RunningDirectionY", zMovement);
                movementSpeed *= 0.7f;
            }
            else if (zMovement > 0)
            {
                anim.SetFloat("RunningDirectionY", zMovement);
            }
            else {
                anim.SetFloat("RunningDirectionY", 0);

            }

            if (xMovement != 0) {
                anim.SetFloat("RunningDirectionX", xMovement);
    
            }

        }

        if (desiredMoveDirection != Vector3.zero) {
            desiredRollDirection = desiredMoveDirection.normalized;
        }

        if (!PlayerAttack.isAttacking)
        {
            controller.Move(desiredMoveDirection.normalized * Time.deltaTime * movementSpeed);
        }
    }

    void Rotation()
    {
        if (desiredMoveDirection != Vector3.zero && !isRolling)
        {
            if (LockOn.LockedOn)
            {
                //transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(lockOn.getEnemyPosition()), 0.5f);
                Vector3 lookDir = lockOn.getEnemyPosition();
                lookDir.y = transform.position.y;
                transform.LookAt(lookDir);

            }
            else
            {
                //transform.forward = desiredMoveDirection;
                if (!PlayerAttack.isAttacking) {
                    transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(desiredMoveDirection), 0.5f);
                }
                
            }

        }
        //Soft Lock
        //if (!LockOn.LockedOn &&PlayerAttack.isAttacking && lockOn.enemiesInRange())
        //{
        //    Vector3 lookDir = lockOn.getSoftLockTarget();
        //    lookDir.y = transform.position.y;
        //    transform.LookAt(lookDir);
        //}


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

        if (velocity.y < 0) {
            descending = true;
        }

    }

    void Jump()
    {
        if (controller.isGrounded && !PlayerAttack.isAttacking)
        {
            //print(controller.isGrounded);           
            gravity = -20f;
            velocity.y += Mathf.Sqrt(jumpHeight * -2f * gravity);
            //velocity.y += Time.deltaTime * jumpHeight * -2f * gravity;
        }
    }

    void Roll()
    {
        if ((velocity.x > 0.7 || velocity.x < -0.7 || velocity.z > 0.7 || velocity.z < -0.7))
        {
            isRolling = true;
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
        isRolling = true;
        if (!controller.isGrounded) {
            airDash = true;
        }
    }

    void ApplyDrag()
    {
        velocity.x /= 1 + Drag.x * Time.deltaTime;
        velocity.y /= 1 + Drag.y * Time.deltaTime;
        velocity.z /= 1 + Drag.z * Time.deltaTime;
    }

    /**
     * Used to tell object when it is in the air
     * */
    public void InAir()
    {
        if (!wasInAir) {
            anim.ResetTrigger("IA");
            anim.SetTrigger("IA");
            pAttack.BackToPlayerIdle();
        }
        wasInAir = true;
        inAir = true;
       
    }

    public bool isPlayerRolling() {
        return isRolling;
    }

    public bool canAirAttack()
    {        
        if (!controller.isGrounded && inAir && descending)
        {
            return true;
        }
        return false;
    }

}
