using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Serialization;
using Random = UnityEngine.Random;


namespace Enemy
{
	//[RequireComponent(typeof(Rigidbody))] //doesn't look like this will be necessary, depends on game physics.
	[RequireComponent(typeof(NavMeshAgent))]
	public class DummyEnemy : MonoBehaviour, IHittable {
		private GameObject _player;
		private List<HealthPip> _pips;
		[SerializeField] private int startingHealthPips = 5;

		private NavMeshAgent _nmAgent;
		private Vector3? _currentDestination;
		private AIStrategyEnum _currentStrategy;
		[SerializeField] private AIStrategyEnum currentStrategy;
		[SerializeField] private float timeInCurrentStrategy;

		private bool _awareOfPlayer = false;

		private float _timeSinceHit;
		private bool _iFramesActive;

		private float _timeToSpendInStrategy;


		void Start() {
			_player = GameObject.FindWithTag("Player");
			_pips = new List<HealthPip>();
			for (int i = 0; i < startingHealthPips; i++)
			{
				_pips.Add(
					new HealthPip
					( //TODO: break these out into inspector fields instead. Possibly stick to percentages though?
						hp: 	100f / startingHealthPips,
						regen: 	 75f / startingHealthPips,
						degen: 	 25f / startingHealthPips
					)
				);
			}

			_nmAgent         = GetComponent<NavMeshAgent>();
			_currentStrategy = AIStrategyEnum.Approach;
			timeInCurrentStrategy = Random.Range(0, 6f);
			_timeToSpendInStrategy = 6f;
			//_nmAgent.destination = player.transform.position;
		}

		// Update is called once per frame
		void Update()
		{
			if (_iFramesActive) {
				_timeSinceHit += Time.deltaTime;
				if (_timeSinceHit > 0.5f) {
					_iFramesActive = false;
				}
			}
			if (_pips[0].destroyed())
			{
				_pips.Remove(_pips[0]);
			}
			if (_pips.Count == 0)
			{
				//Enemy's dead!
				gameObject.SetActive(false); //todo: actual death code.
				return;
			}
			_pips[0].updateHealth();
			if (_awareOfPlayer) {
				timeInCurrentStrategy += Time.deltaTime;
				if (_currentStrategy != currentStrategy) {
					ChangeStrategy(currentStrategy);
				}

				RunCurrentStrategy();
			}
		}

		void RunCurrentStrategy()
		{
			switch (_currentStrategy)
			{
				case AIStrategyEnum.Approach:
				{
					_currentDestination = _player.transform.position;
					if (DistanceToDestination() < 3 || timeInCurrentStrategy > _timeToSpendInStrategy)
					{
						ChangeStrategy(AIStrategyEnum.Retreat);
						_timeToSpendInStrategy = Random.Range(3f, 5f);
						break;
					}

					_nmAgent.destination = (Vector3) _currentDestination;
					break;
				}

//                case AIStrategy.Circle:
//                {
//                    
//                    break;
//                }
				case AIStrategyEnum.Retreat:
				{
					if (_currentDestination == null)
					{
						_currentDestination = transform.position + -GetDirectionToPlayer() * 10;
					}

					if (DistanceToDestination() < 5 || timeInCurrentStrategy > _timeToSpendInStrategy)
					{
						ChangeStrategy(AIStrategyEnum.Approach);
						_timeToSpendInStrategy = Random.Range(5f, 6f);
						break;
					}

					_nmAgent.destination = (Vector3) _currentDestination;
					break;
				}
			}
			
		}

		void ChangeStrategy(AIStrategyEnum newStrategy)
		{
			Debug.Log(name + " changing strategy from " + _currentStrategy + " to " + newStrategy);
			_currentDestination = null;
			_currentStrategy    = newStrategy;
			currentStrategy     = newStrategy;

			
			//_nmAgent.isStopped = true;
			timeInCurrentStrategy = 0;
		}

		bool ReachedDestination()
		{
			return _currentDestination == null
			       || Vector3.Distance(transform.position, (Vector3) _currentDestination) < 3;
		}

		float DistanceToDestination()
		{
			return _currentDestination == null
				? 0
				: Vector3.Distance(transform.position, (Vector3) _currentDestination);
		}
		
		public Vector3 GetDirectionToPlayer()
		{
			return (_player.transform.position - transform.position).normalized;
		}

		public void Hit(float damageAmount, Vector3 force) {
			if (!_iFramesActive) {
				_pips[0].damage(damageAmount);
				ChangeStrategy(AIStrategyEnum.Retreat);
				_iFramesActive = true;
			}
		}

		private void OnDrawGizmos()
		{
			Gizmos.color = _currentStrategy == AIStrategyEnum.Approach 
				? Color.red : Color.white; //nb: will use strategy types later
			if (_currentDestination != null)
			{
				Gizmos.DrawLine(transform.position, (Vector3) _currentDestination);
			}
		}

		public void SetAggressive(bool newState) {
			_awareOfPlayer = newState;
		}
	}


	enum AIStrategyEnum //NB: placeholders due to moving behaviour from the proper class and asset until navmesh behaves.
	{
		Approach,
		Retreat,
	}
}