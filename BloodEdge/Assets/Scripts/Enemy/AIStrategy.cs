using UnityEngine;

namespace Enemy
{
    [System.Serializable]
    public abstract class AIStrategy {
        private float _timeInStrategy;
        
        public float selectionFrequency = 1f;

        public void Execute() {
            UpdateTimer();
            ExecuteStrategy();
        }
        public abstract void ExecuteStrategy();
        public abstract void DrawGizmos();

        public void Activate() {
            _timeInStrategy = 0f;
            ActivateStrategy();
        }
        public abstract void ActivateStrategy();
        
        public abstract bool IsComplete();

        private void UpdateTimer() {
            _timeInStrategy += Time.deltaTime;
        }

        public float GetTimeInStrategy() {
            return _timeInStrategy;
        }
    }
    
    

    //possibly won't end up using these
    enum StrategyType
    {
        aggressive,
        waiting,
        passive,
        cautious,
        fleeing
    }

    enum StrategyRange
    {
        melee,
        ranged,
        all
    }
}
