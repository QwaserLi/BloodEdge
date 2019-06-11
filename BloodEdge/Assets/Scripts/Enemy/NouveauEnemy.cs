using System;
using UnityEngine;
using UnityEngine.Serialization;
using Random = UnityEngine.Random;

namespace Enemy {
    public class NouveauEnemy : MonoBehaviour, IHittable {
	    /*--------------------------------------*\
		 *				Constants				*|
		 *--------------------------------------*/
		private const int CROWDING_RESOLUTION 	= 16;
		private const float CROWDING_RANGE 		= 8f; //was 6f. Now 8 to account for movement speed.
		private const float CROWDING_CHECK_TIME = 1f;
		//calculated helper variables
		private const float CROWDING_INTERVAL_ANGLE = 360f / CROWDING_RESOLUTION;
		private const float CROWDING_EMPTY_TOTAL = CROWDING_RESOLUTION * CROWDING_RANGE;
	    
	    /*--------------------------------------*\
		 *				Variables				*|
		 *--------------------------------------*/
	    //references to the enemy's relevant components
            private CapsuleCollider _capsuleCollider;
            //private MeshRenderer _meshRenderer;
            private Animator _puppetAnimator;
            private Rigidbody _rigidbody;
            
        //references to the player GameObject and the relevant components
            private GameObject _pGameObject;
            private PlayerHealth _pHealth;
            private PlayerController _pController;
            private Transform _pTransform;
            
	    //settings exposed to the Unity Inspector
	    [Header("Gameplay Settings")]
			[SerializeField, Range(0.1f, 5f)] private float movementSpeed = 1f;	//enemy movement in units per second
			[SerializeField, Range(10f, 100f)] private float turningSpeed = 50f;
			[Header("Behaviour Settings")]
			[SerializeField, Range(0.85f, 0.95f)] private float turningAccuracy = 0.95f;
			[SerializeField, Range(0.1f, 1f)] private float aggressiveness;
			//[SerializeField, Range(0.05f, 2/3f)] private float crowdingThreshold;
			
			
		//internal state variables
			private Vector3 _startingPosition;
			private bool _tryFacePlayer;		//whether the enemy should try to keep facing the player
            private bool _awareOfPlayer;	//is the enemy currently aware of the player?
            private float[] _crowded;		//crowded directions, going clockwise. Lower is more crowded.
            private float _crowdedTotal;	//sum of all crowding directions
            //private bool _engaging;			//is the enemy currently engaging the player or just looking menacing?
            private bool _attacking;
            private bool _idle;
            //below variables are only temporarily exposed for debug purposes
            [SerializeField] private Directive directiveState = Directive.idle;
            [SerializeField] private Vector3 desiredVector;
            [SerializeField] private float baseAnimSpeedScalar = 0.5f;
	    //internal timers
			private float _crowdingUpdateTimer; //in seconds
			private float _hitStunTimer;
			private float _hitITimer;
			
			//maybe temporary? I hope so!
			private float _strikeThePlayerTimer = -1f;
			private float _forbiddenFromAttackingTimer;
			
			
	    //possibly temporary:
			private float hp = 100f;
			
		//debug settings
		[Header("Debug Settings")]
			[SerializeField] private GameObject debugHead;
		

		private static readonly int IsRunning = Animator.StringToHash("isRunning");


		/*--------------------------------------*\
		 *			Gameplay Methods			*|
		 *--------------------------------------*/
        void Start() {
	        InitialiseTimers();
	        _crowded = new float[CROWDING_RESOLUTION];
	        desiredVector = transform.forward;
	        _startingPosition = transform.position;
	        
	        _capsuleCollider = GetComponent<CapsuleCollider>();
	        //_meshRenderer = GetComponent<MeshRenderer>();
	        _puppetAnimator = GetComponentInChildren<Animator>();
	        _rigidbody = GetComponent<Rigidbody>();
	        
	        _pGameObject = GameObject.FindWithTag("Player");
	        _pHealth = _pGameObject.GetComponent<PlayerHealth>();
	        _pController = _pGameObject.GetComponent<PlayerController>();
	        _pTransform = _pGameObject.transform;

	        _puppetAnimator.speed = baseAnimSpeedScalar;
        }


        void Update() {
	        var dT = Time.deltaTime;
	        if (UpdateTimer(ref _crowdingUpdateTimer, 1f)) {
		        UpdateCrowding();
	        }
	        
	        if (_hitITimer > 0f) {
		        UpdateTimer(ref _hitITimer, 0f);
	        }

	        if (_hitStunTimer > 0f) {
		        UpdateTimer(ref _hitStunTimer, 0f);
		        _puppetAnimator.speed = _hitStunTimer > 0f ? 0.01f : baseAnimSpeedScalar;
		        return;
	        }

	        if (_strikeThePlayerTimer > 0f) {
		        UpdateTimer(ref _strikeThePlayerTimer, 0f);
	        }

	        if (_forbiddenFromAttackingTimer > 0f) {
		        UpdateTimer(ref _forbiddenFromAttackingTimer, 0f);
	        }

	        desiredVector = Vector3.MoveTowards(
			    desiredVector,
			    AvoidCrowdingVector(),
			    dT * CrowdingPercent() * 3f * (_awareOfPlayer ? 2f : 1f)).normalized;

		    var leash = _startingPosition - transform.position;
		    leash.y = 0;
		    desiredVector = Vector3.MoveTowards(desiredVector, leash, 0.75f * dT).normalized; //was 0.5
		    
		    float idleToggleChance = 0f;

		    if (_awareOfPlayer) {
			    _tryFacePlayer = CrowdingPercent() < 0.3f || _attacking;
				desiredVector = Vector3.MoveTowards(
					desiredVector, 
					_pTransform.position - transform.position, 
					Mathf.Max(3f * dT, 3f * dT / Vector3.Distance(transform.position, _pTransform.position))
				).normalized;
	        }
		    else {
			    idleToggleChance = 0.005f/60f;
		    }

		    if (Random.Range(0f, dT) < idleToggleChance) {
			    _idle = !_idle;
		    }

		    if (_attacking && _strikeThePlayerTimer > -1 && _strikeThePlayerTimer <= 0) {
			    _strikeThePlayerTimer = -1;
			    _attacking = false;

			    if (Vector3.Distance(_pTransform.position, transform.position + transform.forward) < 1.25f) {
				    _pHealth.Hit(5f, (_pTransform.position - transform.position).normalized);
				    Debug.Log("Hit the player!");
			    }
		    }

	        //todo: decide if we're facing the player or not (crowding check? Very crowded, break gaze and retreat from player?)
	        
	        
	        //choose a movement direction based on what's going to get us going where we want to go
	        desiredVector.y = 0;

	        if (!_attacking) {

		        directiveState = _idle ? Directive.idle : ChooseDirective();

		        var t = transform;
		        var p = t.position;
		        bool attemptingMovement = false;
		        
		        switch (directiveState) {
			        case Directive.forward: {
				        transform.position = Vector3.MoveTowards(p, p + t.forward, movementSpeed * dT);
				        attemptingMovement = true;
				        break;
			        }

			        case Directive.backward: {
				        transform.position = Vector3.MoveTowards(p, p + t.forward, -movementSpeed * dT * 0.5f);
				        attemptingMovement = true;
				        break;
			        }

			        case Directive.strafeLeft: {
				        transform.position = Vector3.MoveTowards(p, p - t.right, movementSpeed * dT * 0.7f);
				        attemptingMovement = true;
				        break;
			        }

			        case Directive.strafeRight: {
				        transform.position = Vector3.MoveTowards(p, p + t.right, movementSpeed * dT * 0.7f);
				        attemptingMovement = true;
				        break;
			        }

			        case Directive.attack: {
				        _puppetAnimator.SetBool(IsRunning, false);

				        _attacking = true;
				        _forbiddenFromAttackingTimer = 3f;
				        _strikeThePlayerTimer = 2f;
				        
				        //todo: an animation here except we can't use the player one because of callbacks.
				        
				        break;
			        }

			        default: {
				        _puppetAnimator.SetBool(IsRunning, false);
				        break;
			        }
		        }

		        _puppetAnimator.SetBool(IsRunning, attemptingMovement);
//		        if (attemptingMovement) { //todo: this won't work for strafing, but we don't have strafes yet.
//			        _puppetAnimator.SetBool(IsRunning, _rigidbody.velocity.magnitude > 0.3f);
//		        }
	        }
        }

        void LateUpdate() {
	        if (_tryFacePlayer) {
		        AttemptFacePlayer(Time.deltaTime);
	        }
	        else {
		        AttemptFacePosition(transform.position + desiredVector, Time.deltaTime);
	        }

	        if (hp <= 0) {
		        gameObject.SetActive(false);
	        }
        }
        
        public bool Hit(float damage, Vector3 force) {
	        if (_hitITimer <= 0) {
		        hp -= damage * (_hitStunTimer > 0 ? 0.33f : 0.75f);
		        //GetComponent<Rigidbody>().AddForce(force);
		        GetComponent<Rigidbody>().AddForce(Vector3.up * 100f);
		        GetComponent<Rigidbody>().AddForce(
			        //(transform.position-_pTransform.position).normalized * (_hitStunTimer > 0f ? 500f : 1000f)
			        (_pTransform.forward + (transform.position - _pTransform.position).normalized)
			        * (_hitStunTimer > 0f ? 10f : 70f)
		        );
		        
		        _hitStunTimer = (_hitStunTimer + 1.5f)/2f;
		        _hitITimer = _hitStunTimer; //we've currently got an enormous hitbox, so set this to stun time for now. // * 0.75f;

		        _attacking = false;
		        _strikeThePlayerTimer = -1f;
	        }

	        return true;
        }

        /*--------------------------------------*\
		 *				AI Methods				*|
		 *--------------------------------------*/
        private bool FacingPlayer() {
	        return Vector3.SignedAngle(transform.forward, (_pTransform.position - transform.position).normalized, Vector3.up) <= 20f;
	        //todo: replace with the simpler vector check and put in the place of the old one.
        }
        
        private void AttemptFacePlayer(float dT) {
			AttemptFacePosition(_pTransform.position, dT);
        }
        
        private void AttemptFacePosition(Vector3 pos, float dT) {
	        var t = transform;
	        var angleDifference = Vector3.SignedAngle(t.forward, (pos - t.position).normalized, Vector3.up);
	        if (Math.Abs(angleDifference) > 360f-360f*turningAccuracy) {
		        var multiplier = (Math.Abs(angleDifference) - (360f-360f*turningAccuracy)) / (360f*turningAccuracy);
		        var rot = turningSpeed * dT * multiplier * Math.Sign(angleDifference) * 50;
		        transform.Rotate(0, rot, 0);
	        }
        }
        
        
        private void UpdateCrowding() {
	        var checkVector = Vector3.forward;
	        RaycastHit hit;
	        const int allButWeaponMask = 0b0111111;
	        _crowdedTotal = 0;
	        for (int i = 0; i < CROWDING_RESOLUTION; i++) {
		        _crowded[i] = 
			        Physics.Raycast(
				        transform.position - Vector3.up*0.5f,
				        checkVector,
				        out hit,
				        maxDistance: CROWDING_RANGE,
				        layerMask: allButWeaponMask
				    ) ? hit.distance : CROWDING_RANGE;
		        _crowdedTotal += _crowded[i];
		        checkVector = Quaternion.Euler(0, CROWDING_INTERVAL_ANGLE, 0) * checkVector;
	        }
        }

        private Vector3 AvoidCrowdingVector() {
//	        int openSpaceIndex = 0;
//	        float mostAvailableSpace = 0f;
	        int mostCrowdedIndex = 0;
	        float mostCrowdedVal = CROWDING_RANGE;
	        for (int i = 0; i < CROWDING_RESOLUTION; i++) {
		        //Debug.Log(i+": "+_crowded[i]);
//		        if (_crowded[i] > mostAvailableSpace) {
//			        mostAvailableSpace = _crowded[i];
//			        openSpaceIndex = i;
//		        }
		        if (_crowded[i] < mostCrowdedVal) { //lower is closer!
			        //Debug.Log(i+": "+_crowded[i]);
			        mostCrowdedVal = _crowded[i];
			        mostCrowdedIndex = i;
		        }
	        }
	        //Debug.Log(mostCrowdedIndex+": "+mostCrowdedVal);
	        return Quaternion.Euler(0, CROWDING_INTERVAL_ANGLE * mostCrowdedIndex, 0) * -Vector3.forward;
        }

        private Directive ChooseDirective() {
	        Directive bestDirective = Directive.idle;
	        float bestRange = 10f;
	        float checkRange;
	        
	        if (_forbiddenFromAttackingTimer <= 0 &&
					Vector3.Distance(transform.position + transform.forward, _pTransform.position) < 1.25f) {
		        //Debug.Log("Attempting attack");
		        return Directive.attack;
	        }

	        if ((checkRange = Vector3.Distance(transform.right, desiredVector)) < bestRange) {
		        bestRange = checkRange;
		        bestDirective = Directive.strafeRight;
	        }
	        if ((checkRange = Vector3.Distance(-transform.right, desiredVector)) < bestRange) {
		        bestRange = checkRange;
		        bestDirective = Directive.strafeLeft;
	        }
	        if ((checkRange = Vector3.Distance(transform.forward, desiredVector)) < bestRange) {
		        bestRange = checkRange;
		        bestDirective = Directive.forward;
	        }
	        if (Vector3.Distance(-transform.forward, desiredVector) < bestRange) {
		        bestDirective = Directive.backward;
	        }
	        return bestDirective;
        }

        private float CrowdingPercent() {
	        return 1f - _crowdedTotal / CROWDING_EMPTY_TOTAL;
        }
        
        private enum Directive {
	        forward,
	        backward,
	        strafeLeft,
	        strafeRight,
	        idle,
	        attack
        }

        private bool UpdateTimer(ref float timer, float resetSeconds) {
	        timer -= Time.deltaTime;
	        if (timer < 0f) {
		        timer += resetSeconds;
		        return true;
	        }
	        return false;
        }

        private void InitialiseTimers() {
	        _crowdingUpdateTimer = Random.Range(0f, CROWDING_CHECK_TIME); //this is to evenly distribute the checks
        }

        public void SetAwareness(bool newAwareness) {
	        _awareOfPlayer = newAwareness;
	        if (newAwareness) {
		        _idle = false; //hacky, temporary.
	        }
        }

        public bool GetAwareness() {
	        return _awareOfPlayer;
        }
        
        
        /*--------------------------------------*\
         *				Debug Code				*|
         *--------------------------------------*/
        private void OnDrawGizmos() {
	        float eyeSize = 0.15f;
	        var t = transform;
	        var headT = debugHead.transform;
	        var headPos = headT.position;
	        var pos = t.position;
	        var facing = headT.forward;
	        var sc = t.localScale;

	        Vector3 facePos = headPos + facing * sc.z/2f; 	//'z', apparently, is forward.
	        Vector3 eyesPos = debugHead.transform.position + headT.forward * 0.125f; //facePos + t.up * sc.y/3f;
	        Vector3 eyesOff = headT.right * 0.275f;
	        Vector3 rEyePos = eyesPos + eyesOff/2f;

	        Gizmos.color = !_awareOfPlayer ? Color.white : _hitStunTimer > 0f ? Color.yellow : new Color(1f, 0.8f, 0.8f);
	        for (int i = 0; i < 2; i++) {
		        Gizmos.DrawSphere(rEyePos + -eyesOff * i, eyeSize);
	        }
	        Gizmos.color = _awareOfPlayer ? new Color(0.64f, 0f, 0f) : new Color(0.41f, 0.12f, 0.24f);//Color.black;
	        for (int i = 0; i < 2; i++) {
		        Gizmos.DrawSphere(rEyePos + -eyesOff * i, eyeSize / 3f);
	        }

	        if (!Application.isEditor || !Application.isPlaying) { return; }
	        var playerPos = _pTransform.position;
	        
	        var crowdingLine = Vector3.forward;
	        for (int i = 0; i < CROWDING_RESOLUTION; i++) {
		        float crowdRatio = _crowded[i] / CROWDING_RANGE;
		        Gizmos.color = new Color(1f-crowdRatio, crowdRatio, 0, 1f-crowdRatio*0.97f);

		        Gizmos.DrawLine(pos - Vector3.up*0.5f, pos+crowdRatio * CROWDING_RANGE * crowdingLine - Vector3.up*0.5f);
		        crowdingLine = Quaternion.Euler(0, CROWDING_INTERVAL_ANGLE, 0) * crowdingLine;
	        }

	        Gizmos.color = Color.red;
	        if (_attacking) {
		        Gizmos.DrawWireSphere(pos + t.forward, 1.25f);
		        
	        }

	        if (_strikeThePlayerTimer > -0.9f) {
		        Gizmos.DrawSphere(pos + t.forward, 1.25f - 0.625f * _strikeThePlayerTimer);
	        }
	        
	        
	        //Gizmos.DrawLine(pos, pos+desiredVector*5f);
////	        Gizmos.color = Color.green;
////	        Gizmos.DrawLine(pos, pos+AvoidCrowdingVector()*2f);
//	        
//	        if (_tryFacePlayer) {
//		        var targetFacing = Vector3.MoveTowards(eyesPos, playerPos, 1.5f)-eyesPos;
//		        targetFacing.y = 0;
//		        
//		        var arcColour = Color.yellow;
//		        Gizmos.color = arcColour;
//		        
////		        Gizmos.DrawLine(eyesPos, eyesPos + facing);
////		        Gizmos.DrawLine(eyesPos, eyesPos + targetFacing);
//		        for (int i = 1; i <= 20; i++) {
//			        arcColour *= 0.96f;
//			        Gizmos.color = arcColour;
//			        Gizmos.DrawLine(
//				        eyesPos + 0.05f * i * facing,
//				        eyesPos + 0.05f * i * targetFacing);
//		        }
//	        }
	        
        }


        public float GetHP() {
	        return hp;
        }
    }
}
