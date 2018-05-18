C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp008 : (forall P Q R J K M : Prop, ((P \/ ~Q) /\ (Q \/ ~R) /\ (R -> (J \/ K)) /\ (K -> M) /\ (M \/ P)) -> P).
1 subgoal
  
  ============================
  forall P Q R J K M : Prop,
  (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R -> J \/ K) /\ (K -> M) /\ (M \/ P) -> P

exp008 < intros.
1 subgoal
  
  P, Q, R, J, K, M : Prop
  H : (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R -> J \/ K) /\ (K -> M) /\ (M \/ P)
  ============================
  P

exp008 < destruct H.
1 subgoal
  
  P, Q, R, J, K, M : Prop
  H : P \/ ~ Q
  H0 : (Q \/ ~ R) /\ (R -> J \/ K) /\ (K -> M) /\ (M \/ P)
  ============================
  P

exp008 < destruct H.
2 subgoals
  
  P, Q, R, J, K, M : Prop
  H : P
  H0 : (Q \/ ~ R) /\ (R -> J \/ K) /\ (K -> M) /\ (M \/ P)
  ============================
  P

subgoal 2 is:
 P

exp008 < exact H.
1 subgoal
  
  P, Q, R, J, K, M : Prop
  H : ~ Q
  H0 : (Q \/ ~ R) /\ (R -> J \/ K) /\ (K -> M) /\ (M \/ P)
  ============================
  P

exp008 < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error:
In nested Ltac calls to "tauto" and "<Coq.Init.Tauto.with_uniform_flags>",
last call failed.
Tactic failure: Classical tauto failed.

exp008 < destruct H0.
1 subgoal
  
  P, Q, R, J, K, M : Prop
  H : ~ Q
  H0 : Q \/ ~ R
  H1 : (R -> J \/ K) /\ (K -> M) /\ (M \/ P)
  ============================
  P

exp008 < destruct H1.
1 subgoal
  
  P, Q, R, J, K, M : Prop
  H : ~ Q
  H0 : Q \/ ~ R
  H1 : R -> J \/ K
  H2 : (K -> M) /\ (M \/ P)
  ============================
  P

exp008 < destruct H2.
1 subgoal
  
  P, Q, R, J, K, M : Prop
  H : ~ Q
  H0 : Q \/ ~ R
  H1 : R -> J \/ K
  H2 : K -> M
  H3 : M \/ P
  ============================
  P

exp008 < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error:
In nested Ltac calls to "tauto" and "<Coq.Init.Tauto.with_uniform_flags>",
last call failed.
Tactic failure: Classical tauto failed.

exp008 < right H3.
Toplevel input, characters 0-9:
> right H3.
> ^^^^^^^^^
Error: Illegal tactic application: got 1 extra argument.

exp008 < right.
Toplevel input, characters 0-5:
> right.
> ^^^^^
Error: Not an inductive product.

exp008 < destruct H3.
2 subgoals
  
  P, Q, R, J, K, M : Prop
  H : ~ Q
  H0 : Q \/ ~ R
  H1 : R -> J \/ K
  H2 : K -> M
  H3 : M
  ============================
  P

subgoal 2 is:
 P

exp008 < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error:
In nested Ltac calls to "tauto" and "<Coq.Init.Tauto.with_uniform_flags>",
last call failed.
Tactic failure: Classical tauto failed.

exp008 < 
