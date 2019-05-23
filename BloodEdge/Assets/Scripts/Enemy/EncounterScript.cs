using System;
using System.Collections.Generic;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Enemy {
    public class EncounterScript : MonoBehaviour {
        [SerializeField] private DummyEnemy enemyType;
        [Space(10)]
        [SerializeField] private int numberOfEnemies = 3;
        [SerializeField] private float spawnAreaRadius = 5f;
        [Space(10)]
        [SerializeField] private float aggroRange = 20f;

        private GameObject _player;
        private List<DummyEnemy> _spawnedEnemyScripts;
        private bool _activated = false;
        
        void Start()
        {
            _player = GameObject.FindWithTag("Player");
            _spawnedEnemyScripts = new List<DummyEnemy>();
            for (int i = 0; i < numberOfEnemies; i++) {
                float rotation = Random.Range(0f, Mathf.PI*2f);
                _spawnedEnemyScripts.Add(Instantiate(enemyType, transform.position +
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
            if (!_activated && Vector3.Distance(_player.transform.position, transform.position) <= aggroRange) {
                foreach (DummyEnemy enemy in _spawnedEnemyScripts) {
                    enemy.SetAggressive(true);
                }
                _activated = true;
            }
        }

        private void OnDrawGizmos() {
            Gizmos.color = _activated ? Color.gray: Color.red;
            var pos = transform.position;
            var size = Mathf.Sqrt(numberOfEnemies)/4f;
            Gizmos.DrawSphere(pos, size);
            for (int i = 0, l = numberOfEnemies/5; i < l; i++)
            {
                Gizmos.DrawSphere(pos, size - size * 0.95f * i/l);
            }
//            Gizmos.DrawWireSphere(pos, 1.03f);
            Gizmos.DrawWireSphere(pos, aggroRange);
//            Gizmos.color = Color.blue;
//            Gizmos.DrawWireSphere(pos, 1.02f);
            
        }

        private void OnDrawGizmosSelected() {
            Gizmos.color = Color.blue;
            Gizmos.DrawWireSphere(transform.position, spawnAreaRadius);
        }
    }
}
