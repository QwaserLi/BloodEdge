using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UpdateCharge : MonoBehaviour
{

    public Image redCharge;
    public Image blueCharge;

    public static float currentRedCharge = 0;
    public static float currentBlueCharge = 0;

    // Update is called once per frame
    void Update()
    {
        UpdateChargeUI(currentRedCharge, currentBlueCharge);
    }

    void UpdateChargeUI(float rc, float bc)
    {
        float ra = (rc / 100.0f);
        redCharge.fillAmount = ra;
        float ba = (bc / 100.0f);
        blueCharge.fillAmount = ba;
    }
}
