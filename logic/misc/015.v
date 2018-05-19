C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp015 : (forall P Q : Prop, ((P -> Q) /\ ~Q) -> ~P).
1 subgoal
  
  ============================
  forall P Q : Prop, (P -> Q) /\ ~ Q -> ~ P

exp015 < intros.
1 subgoal
  
  P, Q : Prop
  H : (P -> Q) /\ ~ Q
  ============================
  ~ P

exp015 < destruct H.
1 subgoal
  
  P, Q : Prop
  H : P -> Q
  H0 : ~ Q
  ============================
  ~ P

exp015 < tauto.
No more subgoals.

exp015 < Qed.
exp015 is defined
