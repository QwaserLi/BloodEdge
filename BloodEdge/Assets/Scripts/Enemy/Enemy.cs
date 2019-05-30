using System;
using System.Collections.Generic;
using Enemy.Strategies;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;

namespace Enemy
{
    [RequireComponent(typeof(NavMeshAgent))]
    public abstract class Enemy : MonoBehaviour, IHittable
    {
        private GameObject _player;

        private List<HealthPip> _pips;
        [SerializeField] private int startingHealthPips = 5;

        [NonSerialized] public NavMeshAgent nmAgent;
        private AIStrategy _currentStrategy;

//        [SerializeField] private UnawareStrategySetting[] unawareStrategies;
//        [SerializeField] private AggressiveStrategyName[] aggressiveStrategies;
//        [SerializeField] private DefensiveStrategyName[] defensiveStrategies;
//
//        private List<UnawareStrategy> _unawareStrats;
//        private List<AggressiveStrategy> _aggressiveStrats;
//        private List<DefensiveStrategy> _defensiveStrats;

	    private UnawareIdle _PLAYTEST_Idle;
	    private AggressiveApproach _PLAYTEST_Approach;
	    private DefensiveRetreat _PLAYTEST_Retreat;
	    
	    
	    private bool _awareOfPlayer;
        
        void Start() {
	        //_unawareStrats = UnawareStrategy.PopulateList(unawareStrategies);
	        
	        _player = GameObject.FindWithTag("Player");
	        
	        _PLAYTEST_Idle = new UnawareIdle(0f);
	        _PLAYTEST_Approach = new AggressiveApproach(0f, this, _player);
	        _PLAYTEST_Retreat = new DefensiveRetreat(0f, this);
	        
			_pips = new List<HealthPip>();
			for (int i = 0; i < startingHealthPips; i++)
			{
				_pips.Add(
					new HealthPip
					(
						hp: 	100f / startingHealthPips,
						regen: 	 75f / startingHealthPips,
						degen: 	 25f / startingHealthPips
					)
				);
			}

			nmAgent         = GetComponent<NavMeshAgent>();
			_currentStrategy = _PLAYTEST_Idle;
			//timeInCurrentStrategy = Random.Range(0, 6f);
			//_nmAgent.destination = player.transform.position;
		}

		// Update is called once per frame
		void Update()
		{
			if (_pips[0].destroyed())
			{
				_pips.Remove(_pips[0]);
			}
			if (_pips.Count == 0)
			{
				//Enemy's dead!
				gameObject.SetActive(false); //todo: actual death code. We need our mesh first.
				return;
			}
			_pips[0].updateHealth();

			if (_currentStrategy.IsComplete())
			{
				if (Random.Range(0, 1) < 0.5) {
					ChangeStrategy(_PLAYTEST_Approach);
				}
				else {
					ChangeStrategy(_PLAYTEST_Retreat);
				}
			}
			
			_currentStrategy.Execute();

//			if (_awareOfPlayer) {
//			}

		}

//		void RunCurrentStrategy()
//		{
//			/*
//			switch (_currentStrategy)
//			{
//				case AIStrategy.Approach:
//				{
//					_currentDestination = _player.transform.position;
//					if (DistanceToDestination() < 3 || timeInCurrentStrategy > 6)
//					{
//						ChangeStrategy(AIStrategy.Retreat);
//						break;
//					}
//
//					_nmAgent.destination = (Vector3) _currentDestination;
//					break;
//				}
//
////                case AIStrategy.Circle:
////                {
////                    
////                    break;
////                }
//				case AIStrategy.Retreat:
//				{
//					if (_currentDestination == null)
//					{
//						_currentDestination = transform.position + -GetDirectionToPlayer() * 10;
//					}
//
//					if (DistanceToDestination() < 5 || timeInCurrentStrategy > 4)
//					{
//						ChangeStrategy(AIStrategy.Approach);
//						break;
//					}
//
//					_nmAgent.destination = (Vector3) _currentDestination;
//					break;
//				}
////                case AIStrategy.Flank:
////                {
////                    break; 
////                }
////                case AIStrategy.Flee:
////                {
////                    break;
////                } 
//
//				//nb: likely best way to do these behaviours esp. the non-direct ones will be raycasting
//				//from the player or better yet, from their _camera_, so that they're behaving
//				//according to what the player is doing and we can exert more control over the gameplay flow.
//			}
//
//			//if (_currentDestination != null) _nmAgent.destination = (Vector3) _currentDestination;
//			*/
//		}

	    public Vector3 GetDirectionToPlayer()
		{
			return (_player.transform.position - transform.position).normalized;
		}

		void ChangeStrategy(AIStrategy newStrategy)
		{
			//Debug.Log(name + " changing strategy from " + _currentStrategy + " to " + newStrategy);
			_currentStrategy    = newStrategy;
			//_nmAgent.isStopped = true;
		}

		public void SetAggressive(bool newAggressiveState) {
			_awareOfPlayer = newAggressiveState;
			if (newAggressiveState) {
				ChangeStrategy(_PLAYTEST_Approach);
			}
		}

//		bool ReachedDestination()
//		{
//			return _currentDestination == null
//			       || Vector3.Distance(transform.position, (Vector3) _currentDestination) < 3;
//		}
//
//		float DistanceToDestination()
//		{
//			return _currentDestination == null
//				? 0
//				: Vector3.Distance(transform.position, (Vector3) _currentDestination);
//		}

		public bool Hit(float damageAmount, Vector3 force) {
			_pips[0].damage(damageAmount);
			ChangeStrategy(_PLAYTEST_Retreat);
			return false;
			//todo: integrate the force application
		}

		private void OnDrawGizmos()
		{
//			Gizmos.color = _currentStrategy == AIStrategy.Approach 
//				? Color.red : Color.white; //nb: will use strategy types later
//			if (_currentDestination != null)
//			{
//				Gizmos.DrawLine(transform.position, (Vector3) _currentDestination);
//			}
		}
		
    }
}