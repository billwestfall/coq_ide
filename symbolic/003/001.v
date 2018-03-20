(*

Coq < Section Apples.

Coq < Require Classical.

Coq <  Goal forall f a r:Prop, (f /\ a) /\ (a /\ ~ r) -> (f /\ ~r).
1 subgoal
  
  ============================
  forall f a r : Prop, (f /\ a) /\ a /\ ~ r -> f /\ ~ r

Unnamed_thm < intros.
1 subgoal
  
  f, a, r : Prop
  H : (f /\ a) /\ a /\ ~ r
  ============================
  f /\ ~ r

Unnamed_thm < destruct H.
1 subgoal
  
  f, a, r : Prop
  H : f /\ a
  H0 : a /\ ~ r
  ============================
  f /\ ~ r

Unnamed_thm < split.
2 subgoals
  
  f, a, r : Prop
  H : f /\ a
  H0 : a /\ ~ r
  ============================
  f

subgoal 2 is:
 ~ r

Unnamed_thm < info_auto.
(* info auto: *)
idtac.
2 subgoals
  
  f, a, r : Prop
  H : f /\ a
  H0 : a /\ ~ r
  ============================
  f

subgoal 2 is:
 ~ r

Unnamed_thm < intro.
Toplevel input, characters 0-5:
> intro.
> ^^^^^
Error: Ltac call to "intro" failed.
       No product even after head-reduction.

Unnamed_thm < apply H.
1 subgoal
  
  f, a, r : Prop
  H : f /\ a
  H0 : a /\ ~ r
  ============================
  ~ r

Unnamed_thm < apply H0.
No more subgoals.

Unnamed_thm < Qed.
Unnamed_thm is defined

Coq < 
*)


Section Apples.
Require Classical.
Goal forall f a r:Prop, (f /\ a) /\ (a /\ ~ r) -> (f /\ ~r).
intros.
destruct H.
split.
apply H.
apply H0.
Qed.
