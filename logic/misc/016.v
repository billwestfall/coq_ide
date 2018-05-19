C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp016 : (forall P Q R : Prop, ((P \/ Q) /\ (P -> R) /\ (Q -> R)) -> R).
1 subgoal
  
  ============================
  forall P Q R : Prop, (P \/ Q) /\ (P -> R) /\ (Q -> R) -> R

exp016 < intros.
1 subgoal
  
  P, Q, R : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> R)
  ============================
  R

exp016 < destruct H.
1 subgoal
  
  P, Q, R : Prop
  H : P \/ Q
  H0 : (P -> R) /\ (Q -> R)
  ============================
  R

exp016 < destruct H0.
1 subgoal
  
  P, Q, R : Prop
  H : P \/ Q
  H0 : P -> R
  H1 : Q -> R
  ============================
  R

exp016 < tauto.
No more subgoals.

exp016 < Qed.
exp016 is defined
