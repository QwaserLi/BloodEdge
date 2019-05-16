
namespace Enemy
{
    public class HealthPip
    {
        private float _hitpoints;
        private float _regenerationThreshold;
        private float _degenerationThreshold;

        private const float TEMP_RATE = 0.1f; //TODO: Use the enemy's re/degen rate instead.

        public HealthPip(float hp, float regen, float degen)
        {
            _hitpoints = hp;
            _regenerationThreshold = regen;
            _degenerationThreshold = degen;
        }

        public void updateHealth()
        {
            if (_hitpoints < _degenerationThreshold && _hitpoints > TEMP_RATE)
            {
                _hitpoints -= TEMP_RATE / 2f;
            }
            if (_hitpoints < _regenerationThreshold)
            {
                _hitpoints += TEMP_RATE;
            }
        }

        public void damage(float damageAmount)
        {
            _hitpoints -= damageAmount;
        }

        public bool destroyed()
        {
            return _hitpoints <= 0;
        }
    }
}
