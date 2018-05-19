C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp019 : (forall P Q R : Prop, ((P \/ Q) /\ ~P /\ (Q -> R)) -> R).
1 subgoal
  
  ============================
  forall P Q R : Prop, (P \/ Q) /\ ~ P /\ (Q -> R) -> R

exp019 < intros.
1 subgoal
  
  P, Q, R : Prop
  H : (P \/ Q) /\ ~ P /\ (Q -> R)
  ============================
  R

exp019 < destruct H.
1 subgoal
  
  P, Q, R : Prop
  H : P \/ Q
  H0 : ~ P /\ (Q -> R)
  ============================
  R

exp019 < destruct H0.
1 subgoal
  
  P, Q, R : Prop
  H : P \/ Q
  H0 : ~ P
  H1 : Q -> R
  ============================
  R

exp019 < tauto.
No more subgoals.

exp019 < Qed.
exp019 is defined
