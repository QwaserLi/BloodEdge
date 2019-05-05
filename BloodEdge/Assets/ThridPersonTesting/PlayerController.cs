using System.Collections;
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

    //private Quaternion previousRotation;
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
        anim.SetFloat("Blend", -1);

        float xMovement = Input.GetAxis("Horizontal");
        float zMovement = Input.GetAxis("Vertical");
        Vector3 forward = cam.transform.forward;
        Vector3 right = cam.transform.right;

        forward.y = 0f;
        right.y = 0f;

        Vector3 desiredMoveDirection = forward * zMovement + right * xMovement;

        if (desiredMoveDirection != Vector3.zero)
            transform.forward = desiredMoveDirection;

        controller.Move(desiredMoveDirection * Time.deltaTime * speed);

        //Gravity
        velocity.y += gravity * Time.deltaTime;
        controller.Move(velocity * Time.deltaTime);
        if (controller.isGrounded && velocity.y < 0)
        {
            velocity.y = 0;
        }

        //Jumping
        if (Input.GetButtonDown("Jump") && controller.isGrounded)
        {
            velocity.y += Mathf.Sqrt(jumpHeight * -2f * gravity);
        }
        //Rolling
        if (Input.GetKeyDown(KeyCode.E))
        {
            Vector3 rollDirection;
            if (desiredMoveDirection == Vector3.zero) {
                rollDirection = transform.forward;
            }
            else {
                rollDirection = desiredMoveDirection;
            }

            velocity += Vector3.Scale(rollDirection,
                                       rollDistance * new Vector3((Mathf.Log(1f / (Time.deltaTime * Drag.x + 1)) / -Time.deltaTime),
                                                                  0,
                                                                  (Mathf.Log(1f / (Time.deltaTime * Drag.z + 1)) / -Time.deltaTime)));
        }

        velocity.x /= 1 + Drag.x * Time.deltaTime;
        velocity.y /= 1 + Drag.y * Time.deltaTime;
        velocity.z /= 1 + Drag.z * Time.deltaTime;
    }
}
