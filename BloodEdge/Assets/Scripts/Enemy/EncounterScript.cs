using System;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Enemy {
    public class EncounterScript : MonoBehaviour {
        [SerializeField] private NouveauEnemy enemyPrefab;
        [Space(10)]
        [SerializeField] private int numberOfEnemies = 3;
        [SerializeField] private float spawnAreaRadius = 5f;
        [Space(10)]
        [SerializeField] private float aggroRange = 20f;

        private GameObject _player;
        private List<NouveauEnemy> _spawnedEnemyScripts;
        private bool _activated;
        private bool _cleared;

        private float _encounterTimer;

        void Start()
        {
            _player = GameObject.FindWithTag("Player");
            _spawnedEnemyScripts = new List<NouveauEnemy>();
            for (int i = 0; i < numberOfEnemies; i++) {
                float rotation = Random.Range(0f, Mathf.PI*2f);
                _spawnedEnemyScripts.Add(Instantiate(enemyPrefab, transform.position +
                        new Vector3(
                            Mathf.Sin(rotation) * spawnAreaRadius * Random.Range(0f, 1f),
                            0,
                            Mathf.Cos(rotation) * spawnAreaRadius * Random.Range(0f, 1f)), 
                    Quaternion.identity)
                );
            }
        }


        void Update()
        {
	        if (!_cleared) {
		        if (!_activated) {
			        if (Vector3.Distance(_player.transform.position, transform.position) <= aggroRange) {
				        _activated = true;
			        }
		        }
		        else if (_encounterTimer >= 1) {
			        _encounterTimer -= Random.Range(0.5f, 1.5f);
			        bool allDefeated = true;
			        foreach (NouveauEnemy enemy in _spawnedEnemyScripts) {
				        if (!enemy.GetAwareness() && Random.Range(0, 2) == 0) { 
					        //1 in 3 chance each cycle
					        enemy.SetAwareness(true);
				        }
				        if (allDefeated && enemy.GetHP() > 0) {
					        allDefeated = false;
				        }
			        }
			        if (allDefeated) {
				        _activated = false;
				        _cleared = true;
			        }
		        }
		        else {
			        _encounterTimer += Time.deltaTime;
		        }
	        }
        }

        public bool IsCleared() {
	        return _cleared;
        }

        private void OnDrawGizmos() {
            Gizmos.color = _activated ? Color.yellow : _cleared ? Color.grey : Color.red;
            var pos = transform.position;
            var size = Mathf.Sqrt(numberOfEnemies)/4f;
            Gizmos.DrawSphere(pos, size);
            for (int i = 0, l = numberOfEnemies/5; i < l; i++)
            {
                Gizmos.DrawSphere(pos, size - size * 0.95f * i/l);
            }
            Gizmos.DrawWireSphere(pos, aggroRange);
        }
        
        private void OnDrawGizmosSelected() {
            Gizmos.color = Color.blue;
            Gizmos.DrawWireSphere(transform.position, spawnAreaRadius);
        }
    }
}
