C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp003: (forall M V : Prop, ((M /\ ~V) /\ ~M) -> V).
1 subgoal
  
  ============================
  forall M V : Prop, (M /\ ~ V) /\ ~ M -> V

exp003 < intros.
1 subgoal
  
  M, V : Prop
  H : (M /\ ~ V) /\ ~ M
  ============================
  V

exp003 < destruct H.
1 subgoal
  
  M, V : Prop
  H : M /\ ~ V
  H0 : ~ M
  ============================
  V

exp003 < destruct H.
1 subgoal
  
  M, V : Prop
  H : M
  H1 : ~ V
  H0 : ~ M
  ============================
  V

exp003 < tauto.
No more subgoals.

exp003 < Qed.
exp003 is defined
