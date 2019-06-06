using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

[System.Serializable]
public class Sound
{
    public string name;
    public AudioClip clip;

    [Range(0f, 1f)]
    public float volume;
    [Range(0f, 1f)]
    public float maxVolume;
    [Range(0.1f, 1.0f)]
    public float pitch;
    public bool loop;
    public bool fade;

    [HideInInspector]
    public AudioSource source;
}
