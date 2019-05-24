using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UpdateHealth : MonoBehaviour
{

    public Image bar;
    public static float currentHealth = 100;

    // Update is called once per frame
    void Update()
    {
        UpdateHealthUI(currentHealth);
    }

    public void UpdateHealthUI(float h)
    {
        float ra = (h / 100.0f);
        bar.fillAmount = ra;
    }
}
