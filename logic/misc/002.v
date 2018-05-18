C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < 
Coq < Theorem exp002: (forall I R : Prop, ((I /\ ~R) /\ ~I) -> R).
1 subgoal
  
  ============================
  forall I R : Prop, (I /\ ~ R) /\ ~ I -> R

exp002 < intros.
1 subgoal
  
  I, R : Prop
  H : (I /\ ~ R) /\ ~ I
  ============================
  R

exp002 < destruct H.
1 subgoal
  
  I, R : Prop
  H : I /\ ~ R
  H0 : ~ I
  ============================
  R

exp002 < destruct H.
1 subgoal
  
  I, R : Prop
  H : I
  H1 : ~ R
  H0 : ~ I
  ============================
  R

exp002 < tauto.
No more subgoals.

exp002 < Qed.
exp002 is defined

Coq < 
