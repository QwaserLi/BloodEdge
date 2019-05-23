
using UnityEngine;

namespace Enemy.Strategies {
	public abstract class DefensiveStrategy : AIStrategy
	{
        
	}
	
	public enum DefensiveStrategyName {
		retreat
	}

	public class DefensiveRetreat : DefensiveStrategy {
		private Enemy _enemy;
		private GameObject _player;

		private float _retreatTime;

		private Vector3 _destination;
		
		public DefensiveRetreat(float frequency, Enemy enemyScript) {
			selectionFrequency = frequency;
			_enemy = enemyScript;
		}
		
		public override void ExecuteStrategy() {
			if (Vector3.Distance(_enemy.transform.position, _player.transform.position) < 1f) {
				_destination = _enemy.transform.position + -_enemy.GetDirectionToPlayer() * 10;
				_retreatTime = Random.Range(2f, 7f);
				_enemy.nmAgent.SetDestination(_destination);
			}
		}

		public override void DrawGizmos() {
			throw new System.NotImplementedException();
		}

		public override void ActivateStrategy() {
			_retreatTime = Random.Range(2f, 7f);
			_destination = _enemy.transform.position + -_enemy.GetDirectionToPlayer() * 10;
			_enemy.nmAgent.SetDestination(_destination);
		}

		public override bool IsComplete() {
			return GetTimeInStrategy() > _retreatTime;
		}
	}
}