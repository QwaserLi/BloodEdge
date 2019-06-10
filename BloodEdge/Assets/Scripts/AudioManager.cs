using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class AudioManager : MonoBehaviour
{
    public Sound[] sounds;
    public static AudioManager instance;

    // Start is called before the first frame update
    void Awake()
    {
        if (instance == null) {
            instance = this;
        } else {
            DontDestroyOnLoad(gameObject);
            return;
        }

        foreach(Sound s in sounds) {
            s.source = gameObject.AddComponent<AudioSource>();
            s.source.clip = s.clip;

            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;
        }
    }

    public bool IsPlaying(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s.source.isPlaying) {
            return true;
        }
        return false;
    }

    // Update is called once per frame
    public void Play(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null) {
            return;
        }
        // Changes pitch of scythe attacks so that it isn't too repetative
        if (name.Contains("Scythe")) {
            s.source.pitch = UnityEngine.Random.Range(0.9f, 1.3f);
        }
        s.source.Play();
        if (s.fade) {
            StartCoroutine(FadeVolumeUp(s));
        } else {
            if (s.source.volume > s.maxVolume) {
                s.source.volume = s.maxVolume;
            }
        }
    }

    // Update is called once per frame
    public void Stop(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null) {
            return;
        }
        if (s.fade) {
            StartCoroutine(FadeVolumeDown(s));
        } else {
            s.source.Stop();
        }
    }

    IEnumerator FadeVolumeDown(Sound s)
    {
        while (s.source.volume > 0) {
            s.source.volume -= 0.09f;
            yield return new WaitForSeconds(0.5f);
        }
        //s.source.Stop();
    }

    IEnumerator FadeVolumeUp(Sound s)
    {
        if (s.source.volume > s.maxVolume) {
            s.source.volume = s.maxVolume;
        }
        while (s.source.volume < s.maxVolume) {
            s.source.volume += 0.05f;
            yield return new WaitForSeconds(0.5f);
        }
    }
}
