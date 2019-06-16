using UnityEngine;
using System.Collections;


public class AnimatedTexture : MonoBehaviour {
	public bool changeTextures = true;
	public float Delay = 0.5f;

	public Texture2D[] textures = new Texture2D[1];

	void Start() {
		StartCoroutine(change());
	}

	void Update() { }

	IEnumerator change()
	{
		while (changeTextures)
		{
			int i = 0;
			do
			{
				yield return new WaitForSeconds(Delay);
				GetComponent<Renderer>().material.mainTexture = textures[i];
				i++;

			} while (i < textures.Length);
			if (i > textures.Length) { i = 0; }
		}
	}
}﻿
