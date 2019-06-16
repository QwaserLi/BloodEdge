using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

/**
 * Updates Combo Bar UI
 * */
public class UpdateComboMeter : MonoBehaviour
{
    public Image bar;
    public TextMeshProUGUI comboNum;
    public static float currentComboTimer = 0;
    public static float currentComboNumber = 0;

    // Update is called once per frame
    void Update()
    {
        UpdateComboUI();
    }

    public void UpdateComboUI()
    {
        float ra = 1.0f - (currentComboTimer / 5.0f);
        bar.fillAmount = ra;
        comboNum.text = "   Hits: " + currentComboNumber;
    }
}
