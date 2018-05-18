C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp006 : (forall I R : Prop, ((I /\ ~R) /\ ~I) -> R).    
1 subgoal
  
  ============================
  forall I R : Prop, (I /\ ~ R) /\ ~ I -> R

exp006 < intros.
1 subgoal
  
  I, R : Prop
  H : (I /\ ~ R) /\ ~ I
  ============================
  R

exp006 < destruct H.
1 subgoal
  
  I, R : Prop
  H : I /\ ~ R
  H0 : ~ I
  ============================
  R

exp006 < tauto.
No more subgoals.

exp006 < Qed.
exp006 is defined
