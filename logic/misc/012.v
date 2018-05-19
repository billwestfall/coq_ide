C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp012 : (forall P Q : Prop, P -> (P \/ Q)).
1 subgoal
  
  ============================
  forall P Q : Prop, P -> P \/ Q

exp012 < intros.
1 subgoal
  
  P, Q : Prop
  H : P
  ============================
  P \/ Q

exp012 < tauto.
No more subgoals.

exp012 < Qed.
exp012 is defined
