
using System.Collections.Generic;
using UnityEngine;

namespace Enemy.Strategies {
	
	[System.Serializable]
	public abstract class UnawareStrategy : AIStrategy
	{
//		public static List<UnawareStrategy> PopulateList(UnawareStrategySetting[] stratSettings) {
//			List<UnawareStrategy> strategies = new List<UnawareStrategy>();
//			for (int i = 0; i < stratSettings.Length; i++) {
//				switch (stratSettings[i].strategy) {
//	                case UnawareStrategyName.wanderAround:
//	                {
//		                strategies.Add(new UnawareWander(stratSettings[i].frequency));
//	                    break; 
//	                }
//	                case UnawareStrategyName.idle:
//	                {
//		                strategies.Add(new UnawareIdle());
//		                break; 
//	                }
//				}
//			}
//			return strategies;
//		}
	}
	
	public enum UnawareStrategyName {
		wanderAround,
		idle
	}

	[System.Serializable]
	public class UnawareStrategySetting {
		public UnawareStrategyName strategy;
		public float frequency;
	}
	
	public class UnawareWander : UnawareStrategy {
		public UnawareWander(float frequency) {
			selectionFrequency = frequency;
		}
		
		public override void ExecuteStrategy() {
			
		}

		public override void DrawGizmos() {

		}

		public override void ActivateStrategy() {

		}

		public override bool IsComplete() {
			return GetTimeInStrategy() < Random.Range(0, 10);
		}
	}
	
	public class UnawareIdle : UnawareStrategy {
		public UnawareIdle(float frequency) {
			selectionFrequency = frequency;
		}
		
		public override void ExecuteStrategy() {
		
		}

		public override void DrawGizmos() {

		}

		public override void ActivateStrategy() {

		}

		public override bool IsComplete() {
			return false;
		}
	}
}