using UnityEngine;

namespace Enemy
{
    public class Enemy : MonoBehaviour
    {
        public GameObject player;

        protected Vector3 GetDirectionToPlayer()
        {
            return (player.transform.position - transform.position).normalized;
        }
    }
}