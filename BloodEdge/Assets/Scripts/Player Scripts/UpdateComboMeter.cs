﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UpdateComboMeter : MonoBehaviour
{
    public Image bar;
    public TextMeshProUGUI comboNum;
    public static float currentComboTimer = 0;
    public static float currentComboNumber = 0;

    // Update is called once per frame
    void Update()
    {
        UpdateComboUI(currentComboTimer);
    }

    public void UpdateComboUI(float h)
    {
        float ra = 1.0f - (h / 5.0f);
        bar.fillAmount = ra;
        comboNum.text = "Hits: " + currentComboNumber;
    }

    public static void UpdateComboTimer(float nt)
    {
        currentComboTimer = nt;
    }

    public static void UpdateComboNumber(float comboCount)
    {
        currentComboNumber = comboCount;
    }
}