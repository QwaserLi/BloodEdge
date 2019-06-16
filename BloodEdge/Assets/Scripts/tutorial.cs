using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/*

Defines behaviour for tutorial prompts that always appear when the player is in
a certain area.

*/
public class tutorial : MonoBehaviour {

	public GameObject uiObject;
	public GameObject trigger;

	void Start () {
		uiObject.SetActive(false);
	}

	void OnTriggerStay (Collider other) {
		// Do nothing if it isn't the player
		if(other.gameObject.tag != "Player"){
			return;
		}
		// Activate UI prompt
		uiObject.SetActive(true);
	}

	void OnTriggerExit(Collider other) {
		// Do nothing if it isn't the player
		if(other.gameObject.tag != "Player"){
			return;
		}
		// Deactivate UI prompt
		uiObject.SetActive(false);
		trigger.SetActive(false);
	}
}
