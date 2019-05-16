using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Serialization;

namespace Enemy
{
	//[RequireComponent(typeof(Rigidbody))] //doesn't look like this will be necessary, depends on game physics.
	[RequireComponent(typeof(NavMeshAgent))]
	public class StandardEnemy : Enemy, IHittable
	{
		private List<HealthPip> pips;
		[SerializeField] private int startingHealthPips = 5;

		private NavMeshAgent _nmAgent;
		private Vector3? _currentDestination;
		private AIStrategy _currentStrategy;
		[SerializeField] private AIStrategy currentStrategy;
		[SerializeField] private float _timeInCurrentStrategy;


		void Start()
		{
			pips = new List<HealthPip>();
			for (int i = 0; i < startingHealthPips; i++)
			{
				pips.Add(
					new HealthPip
					( //TODO: break these out into inspector fields instead. Possibly stick to percentages though?
						hp: 	100f / startingHealthPips,
						regen: 	 75f / startingHealthPips,
						degen: 	 25f / startingHealthPips
					)
				);
			}

			_nmAgent         = GetComponent<NavMeshAgent>();
			_currentStrategy = AIStrategy.Approach;
			//_nmAgent.destination = player.transform.position;
		}

		// Update is called once per frame
		void Update()
		{
			if (pips[0].destroyed())
			{
				pips.Remove(pips[0]);
			}
			if (pips.Count == 0)
			{
				//Enemy's dead!
				gameObject.SetActive(false); //todo: actual death code.
				return;
			}
			pips[0].updateHealth();
			_timeInCurrentStrategy += Time.deltaTime;
			if (_currentStrategy != currentStrategy)
			{
				ChangeStrategy(currentStrategy);
			}

			RunCurrentStrategy();
		}

		void RunCurrentStrategy()
		{
			switch (_currentStrategy)
			{
				case AIStrategy.Approach:
				{
					_currentDestination = player.transform.position;
					if (DistanceToDestination() < 3 || _timeInCurrentStrategy > 6)
					{
						ChangeStrategy(AIStrategy.Retreat);
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
				case AIStrategy.Retreat:
				{
					if (_currentDestination == null)
					{
						_currentDestination = transform.position + -GetDirectionToPlayer() * 10;
					}

					if (DistanceToDestination() < 5 || _timeInCurrentStrategy > 5)
					{
						ChangeStrategy(AIStrategy.Approach);
						break;
					}

					_nmAgent.destination = (Vector3) _currentDestination;
					break;
				}
//                case AIStrategy.Flank:
//                {
//                    break; 
//                }
//                case AIStrategy.Flee:
//                {
//                    break;
//                } 

				//NB: likely best way to do these behaviours esp. the non-direct ones will be raycasting
				//from the player or better yet, from their _camera_, so that they're behaving
				//according to what the player is doing and we can exert more control over the gameplay flow.
			}

			//if (_currentDestination != null) _nmAgent.destination = (Vector3) _currentDestination;
		}

		void ChangeStrategy(AIStrategy newStrategy)
		{
			Debug.Log(name + " changing strategy from " + _currentStrategy + " to " + newStrategy);
			_currentDestination = null;
			_currentStrategy    = newStrategy;
			currentStrategy     = newStrategy;
			//_nmAgent.isStopped = true;
			_timeInCurrentStrategy = 0;
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


		public void Hit(float damageAmount)
		{
			//throw new System.NotImplementedException();
			pips[0].damage(damageAmount);
		}

		private void OnDrawGizmos()
		{
			Gizmos.color = _currentStrategy == AIStrategy.Approach 
				? Color.red : Color.white; //nb: will use strategy types later
			if (_currentDestination != null)
			{
				Gizmos.DrawLine(transform.position, (Vector3) _currentDestination);
			}
		}
	}


	enum AIStrategy //NB: placeholders due to moving behaviour from the proper class and asset until navmesh behaves.
	{
		Approach,

//        Circle,
		Retreat,
//        Flank,
//        Flee
	}
}