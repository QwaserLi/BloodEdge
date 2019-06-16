using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

/**
 * An audio manager based of Brackeys tutorial https://www.youtube.com/watch?v=6OT43pvUyfY&t=614s that I
 * have extened upon to allow for more functionality * 
 * */
public class AudioManager : MonoBehaviour
{
    public Sound[] sounds;
    public static AudioManager instance;

    /**
     * Creates the list of SFX and music that can be used by the game. If there is already an audio manager
     * then don't do anything, just leave this one to avoid duplications.
     **/
    void Awake()
    {
        if (instance == null) {
            instance = this;
        } else {
            DontDestroyOnLoad(gameObject);
            return;
        }
        // Create list of sounds based off ones added in inspector
        foreach(Sound s in sounds) {
            s.source = gameObject.AddComponent<AudioSource>();
            s.source.clip = s.clip;

            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;
        }
    }

    /**
     * Checks if the song that matches the passed through name is playing
     * 
     * @params - the name of the song
     * @returns - True or false if the song is playing or not
     **/
    public bool IsPlaying(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s.source.isPlaying) {
            return true;
        }
        return false;
    }

    /**
     *  Plays a song based off the name that is passed through.
     *  
     * @params - the name of the song to play
     * */
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
        // If the sound is something like a music track, we fade it in to be clean
        s.source.Play();
        if (s.fade) {
            StartCoroutine(FadeVolumeUp(s));
        } else {
            if (s.source.volume > s.maxVolume) {
                s.source.volume = s.maxVolume;
            }
        }
    }

    /**
     *  Stops a song based off the name that is passed through.
     *  
     * @params - the name of the song to stop
     * */
    public void Stop(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null) {
            return;
        }
        // If the sound is something like a music track, we fade it out to be clean
        if (s.fade) {
            StartCoroutine(FadeVolumeDown(s));
        } else {
            s.source.Stop();
        }
    }

    /**
     * Fades a songs volume down 
     * */
    IEnumerator FadeVolumeDown(Sound s)
    {
        while (s.source.volume > 0) {
            s.source.volume -= 0.09f;
            yield return new WaitForSeconds(0.5f);
        }
        //s.source.Stop();
    }

    /**
     * Fades a songs volume up 
     * */
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
