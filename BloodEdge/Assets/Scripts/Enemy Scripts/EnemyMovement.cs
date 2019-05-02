using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyMovement
{
    Enemy enemyRef;
    Rigidbody enemyBody;

    public EnemyMovement(Enemy e, Rigidbody eb)
    {
        enemyRef = e;
        enemyBody = eb;
    }

    public void Run()
    {

    }
}
