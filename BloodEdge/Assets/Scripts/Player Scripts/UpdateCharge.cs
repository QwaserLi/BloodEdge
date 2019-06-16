using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/**
 *  Updates the charge bars for rage and mana 
 **/
public class UpdateCharge : MonoBehaviour
{
    public Image redCharge;
    public Image blueCharge;

    public static float currentRedCharge = 0;
    public static float currentBlueCharge = 0;

    void Update()
    {
        UpdateChargeUI();
    }

    void UpdateChargeUI()
    {
        float ra = (currentRedCharge / 100.0f);
        redCharge.fillAmount = ra;
        float ba = (currentBlueCharge / 100.0f);
        blueCharge.fillAmount = ba;
    }
}
