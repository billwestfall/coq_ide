C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp014 : (forall P Q : Prop, ((P -> Q) /\ P) -> Q).
1 subgoal
  
  ============================
  forall P Q : Prop, (P -> Q) /\ P -> Q

exp014 < intros.
1 subgoal
  
  P, Q : Prop
  H : (P -> Q) /\ P
  ============================
  Q

exp014 < destruct H.
1 subgoal
  
  P, Q : Prop
  H : P -> Q
  H0 : P
  ============================
  Q

exp014 < tauto.
No more subgoals.

exp014 < Qed.
exp014 is defined
