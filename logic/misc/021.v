C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp021 : (forall P Q : Prop, (~(P \/ Q) -> (~P /\ ~Q))).
1 subgoal
  
  ============================
  forall P Q : Prop, ~ (P \/ Q) -> ~ P /\ ~ Q

exp021 < intros.
1 subgoal
  
  P, Q : Prop
  H : ~ (P \/ Q)
  ============================
  ~ P /\ ~ Q

exp021 < tauto.
No more subgoals.

exp021 < Qed.
exp021 is defined
