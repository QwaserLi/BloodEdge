using UnityEngine;

namespace Enemy
{
    public interface IHittable
    {
        /// <summary>
        /// Method for dealing damage and applying movement effects to the implementing class.
        /// </summary>
        /// <param name="damage">
        ///     Amount of damage dealt, expressed in a percent value based on a standard enemy.
        /// </param>
        /// <param name="force">
        ///     Unity Vector3 for applying knockback, knockup, gravitation, or other movement effects.
        /// </param>
        /// <example>
        ///    <code>
        ///     HitEnemy.Hit(scytheDamage, (HitEnemy.transform.position - transform.position).normalized);
        ///     </code>
        /// </example>
        bool Hit(float damage, Vector3 force);
    }
}
