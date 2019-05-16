namespace Enemy
{
    public class AIStrategy_
    {
        private StrategyType type;
        private StrategyRange range;
        void Execute()
        {
            /*
             * Cut out into StandardEnemy.cs until navmesh interfacing works or an alternative is found.
             */
        }
    }

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
