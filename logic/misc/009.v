C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp009 : (forall P Q : Prop, ((P \/ Q) /\ P) -> ~Q).
1 subgoal
  
  ============================
  forall P Q : Prop, (P \/ Q) /\ P -> ~ Q

exp009 < intros.
1 subgoal
  
  P, Q : Prop
  H : (P \/ Q) /\ P
  ============================
  ~ Q

exp009 < destruct H.
1 subgoal
  
  P, Q : Prop
  H : P \/ Q
  H0 : P
  ============================
  ~ Q

exp009 < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error:
In nested Ltac calls to "tauto" and "<Coq.Init.Tauto.with_uniform_flags>",
last call failed.
Tactic failure: Classical tauto failed.
