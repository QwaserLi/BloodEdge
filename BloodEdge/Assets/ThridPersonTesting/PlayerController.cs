using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public Animator anim;
    public int speed;
    private Quaternion previousRotation;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
        previousRotation = transform.rotation;
    }

    // Update is called once per frame
    void Update()
    {
        anim.SetFloat("Blend", -1);

        float xMovement = Input.GetAxis("Horizontal");
        float zMovement = Input.GetAxis("Vertical");

        Vector3 moveDirection = new Vector3(xMovement, 0, zMovement) ;
        if (xMovement + zMovement != 0) { 
           // transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(moveDirection), speed);
            transform.rotation = Quaternion.LookRotation(moveDirection);
        }
        transform.Translate(moveDirection * Time.deltaTime * speed, Space.World);




    }
}
