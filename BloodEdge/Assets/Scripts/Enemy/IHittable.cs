using UnityEngine;

namespace Enemy
{
    public interface IHittable
    {
        void Hit(float damage);
        //void Hit(float damage, Vector3 force);
    }
}
