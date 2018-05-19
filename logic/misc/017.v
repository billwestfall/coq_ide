C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp017 : (forall P Q R S : Prop, ((P \/ Q) /\ (P -> R) /\ (Q -> S)) -> (R \/ S)).
1 subgoal
  
  ============================
  forall P Q R S : Prop, (P \/ Q) /\ (P -> R) /\ (Q -> S) -> R \/ S

exp017 < intros.
1 subgoal
  
  P, Q, R, S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  ============================
  R \/ S

exp017 < destruct H.
1 subgoal
  
  P, Q, R, S : Prop
  H : P \/ Q
  H0 : (P -> R) /\ (Q -> S)
  ============================
  R \/ S

exp017 < destruct H0.
1 subgoal
  
  P, Q, R, S : Prop
  H : P \/ Q
  H0 : P -> R
  H1 : Q -> S
  ============================
  R \/ S

exp017 < tauto.
No more subgoals.

exp017 < Qed.
exp017 is defined
