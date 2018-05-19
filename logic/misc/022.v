C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp022 : (forall P Q : Prop, ((P <-> Q) -> ((P -> Q) /\ (Q -> P)))).
1 subgoal
  
  ============================
  forall P Q : Prop, P <-> Q -> (P -> Q) /\ (Q -> P)

exp022 < intros.
1 subgoal
  
  P, Q : Prop
  H : P <-> Q
  ============================
  (P -> Q) /\ (Q -> P)

exp022 < tauto.
No more subgoals.

exp022 < Qed.
exp022 is defined
