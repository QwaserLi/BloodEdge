
using UnityEngine;

namespace Enemy.Strategies {
	public abstract class AggressiveStrategy : AIStrategy 
	{
        
	}

	public enum AggressiveStrategyName {
		approach
	}

	public class AggressiveApproach : AggressiveStrategy {
		private Enemy _enemy;
		private GameObject _player;

		private Vector3 _destination;

		private float _approachTime;
		private int attacksAttempted;

		
		public AggressiveApproach(float frequency, Enemy enemyScript, GameObject playerObject) {
			selectionFrequency = frequency;
			_enemy = enemyScript;
			_player = playerObject;
		}

		
		public override void ExecuteStrategy() {
			if (Vector3.Distance(_enemy.transform.position, _player.transform.position) < 0.1f) {
				attacksAttempted++;
				_player.GetComponent<PlayerHealth>().Hit(0.05f, Vector3.zero);
			} else if (Vector3.Distance(_enemy.transform.position, _destination) < 1) {
				_destination = _player.transform.position;
				_enemy.nmAgent.SetDestination(_destination);
			}
		}

		public override void DrawGizmos() {
			Gizmos.color = Color.red;
			Gizmos.DrawLine(_enemy.transform.position, _destination);

		}

		public override void ActivateStrategy() {
			_approachTime = Random.Range(2f, 10f);
			_destination = _player.transform.position;
			_enemy.nmAgent.SetDestination(_destination);
		}

		public override bool IsComplete() {
			return attacksAttempted >= 3 || GetTimeInStrategy() > _approachTime;
		}
	}
}