C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp005 : (forall R W : Prop, ((R \/ ~W) /\ R) -> W).
1 subgoal
  
  ============================
  forall R W : Prop, (R \/ ~ W) /\ R -> W

exp005 < intros.
1 subgoal
  
  R, W : Prop
  H : (R \/ ~ W) /\ R
  ============================
  W

exp005 < destruct H.
1 subgoal
  
  R, W : Prop
  H : R \/ ~ W
  H0 : R
  ============================
  W

exp005 < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error:
In nested Ltac calls to "tauto" and "<Coq.Init.Tauto.with_uniform_flags>",
last call failed.
Tactic failure: Classical tauto failed.

exp005 < 
