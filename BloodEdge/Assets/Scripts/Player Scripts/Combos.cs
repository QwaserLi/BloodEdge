using System.Collections;
using System.Collections.Generic;
using UnityEngine;

abstract public class Combos
{
    public abstract void PerformMove(Animator anim);
}

public class Slash : Combos
{
    public override void PerformMove(Animator anim)
    {
        anim.SetTrigger("SlashAttack");
        //anim.CrossFade("Slash Attack", 0.2F, 0, 0.2f);
    }
}

public class OtherSlash : Combos
{
    public override void PerformMove(Animator anim)
    {
        //anim.SetTrigger("OtherSlash");
        anim.CrossFade("OtherSlash", 0.2F, 0, 0.2f);
    }
}

public class BackHand : Combos
{
    public override void PerformMove(Animator anim)
    {
        anim.CrossFade("Backhand", 0.2F, 0, 0.3f);
        //anim.SetTrigger("BackHand");
    }
}

public class HeavyHit : Combos
{
    public override void PerformMove(Animator anim)
    {        
        anim.SetTrigger("StrongAttack");
    }
}
