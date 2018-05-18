Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp004 : (forall R A : Prop, ((~R \/ ~A) /\ ~A /\ ~~R) -> R).
1 subgoal
  
  ============================
  forall R A : Prop, (~ R \/ ~ A) /\ ~ A /\ ~ ~ R -> R

exp004 < intros.
1 subgoal
  
  R, A : Prop
  H : (~ R \/ ~ A) /\ ~ A /\ ~ ~ R
  ============================
  R

exp004 < destruct H.
1 subgoal
  
  R, A : Prop
  H : ~ R \/ ~ A
  H0 : ~ A /\ ~ ~ R
  ============================
  R

exp004 < destruct H.
2 subgoals
  
  R, A : Prop
  H : ~ R
  H0 : ~ A /\ ~ ~ R
  ============================
  R

subgoal 2 is:
 R

exp004 < destruct H0.
2 subgoals
  
  R, A : Prop
  H : ~ R
  H0 : ~ A
  H1 : ~ ~ R
  ============================
  R

subgoal 2 is:
 R

exp004 < tauto.
1 subgoal
  
  R, A : Prop
  H : ~ A
  H0 : ~ A /\ ~ ~ R
  ============================
  R

exp004 < tauto.
No more subgoals.

exp004 < Qed.
exp004 is defined

Coq < 
