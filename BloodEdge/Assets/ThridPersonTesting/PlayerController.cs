using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public Animator anim;
    public int speed;
    public Camera cam;
    public CharacterController controller;

    private Vector3 velocity;

    //private Quaternion previousRotation;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        cam = Camera.main;
        controller = this.GetComponent<CharacterController>();
        // previousRotation = transform.rotation;
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

        controller.Move(desiredMoveDirection * Time.deltaTime * 3.0f);


        velocity.y += Physics.gravity.y * Time.deltaTime;
  
        controller.Move(velocity * Time.deltaTime);
        if (controller.isGrounded && velocity.y < 0)
        {
            velocity.y = 0;
        }




    }
}
