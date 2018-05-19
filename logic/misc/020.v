C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp020 : (forall P Q : Prop, ((P -> Q) -> (~~P -> Q))).
1 subgoal
  
  ============================
  forall P Q : Prop, (P -> Q) -> ~ ~ P -> Q

exp020 < intros.
1 subgoal
  
  P, Q : Prop
  H : P -> Q
  H0 : ~ ~ P
  ============================
  Q

exp020 < tauto.
No more subgoals.

exp020 < Qed.
exp020 is defined
