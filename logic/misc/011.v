C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp011 : (forall P Q : Prop, (~P /\ Q) -> Q).
1 subgoal
  
  ============================
  forall P Q : Prop, ~ P /\ Q -> Q

exp011 < intros.
1 subgoal
  
  P, Q : Prop
  H : ~ P /\ Q
  ============================
  Q

exp011 < tauto.
No more subgoals.

exp011 < Qed.
exp011 is defined
