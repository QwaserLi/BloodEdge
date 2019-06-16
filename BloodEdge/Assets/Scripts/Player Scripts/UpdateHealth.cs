using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/**
 * Updates Health Bar UI
 * */
public class UpdateHealth : MonoBehaviour
{
    public Image bar;
    public static float currentHealth = 100;

    void Update()
    {
        UpdateHealthUI();
    }

    /**
     * Updates current health
     **/
    public void UpdateHealthUI()
    {
        float ra = (currentHealth / 100.0f);
        bar.fillAmount = ra;
    }
}
