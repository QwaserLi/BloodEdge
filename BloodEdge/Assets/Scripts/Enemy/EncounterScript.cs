using System;
using UnityEngine;
using Random = UnityEngine.Random;

namespace Enemy {
    public class EncounterScript : MonoBehaviour {
        [SerializeField] private Enemy enemyType;
        [SerializeField] private int numberOfEnemies = 3;

        
        void Start()
        {
            for (int i = 0; i < numberOfEnemies; i++) {
                Instantiate(enemyType, transform.position + 
                                       new Vector3(
                                           Random.Range(
                                               -numberOfEnemies/6.283f,
                                               numberOfEnemies/6.283f),
                                           0,
                                           Random.Range(
                                               -numberOfEnemies/6.283f,
                                               numberOfEnemies/6.283f)), 
                    Quaternion.identity);
            }
        }


        void Update()
        {
        
        }

        private void OnDrawGizmos() {
            Gizmos.color = Color.red;
            var pos = transform.position;
            Gizmos.DrawSphere(pos, 1);
            Gizmos.DrawWireSphere(pos, 1.03f);
            Gizmos.color = Color.blue;
            Gizmos.DrawWireSphere(pos, 1.025f);
        }

        private void OnDrawGizmosSelected() {
            Gizmos.color = Color.red;
            Gizmos.DrawWireSphere(transform.position, numberOfEnemies/1.414f/(float)Math.PI);
        }
    }
}
