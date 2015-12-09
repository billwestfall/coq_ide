(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section DeMorgan_A.

Coq < Goal forall p q:Prop, ~(p /\ q) <-> (~p \/ ~q).
1 subgoal

  ============================
   forall p q : Prop, ~ (p /\ q) <-> ~ p \/ ~ q

Unnamed_thm < Require Import Classical.

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  ============================
   ~ (p /\ q) <-> ~ p \/ ~ q

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq < ^D
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section DeMorgan_A.

Coq < Goal forall p q:Prop, ~(p /\ q) <-> (~p \/ ~q).
1 subgoal

  ============================
   forall p q : Prop, ~ (p /\ q) <-> ~ p \/ ~ q

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  ============================
   ~ (p /\ q) <-> ~ p \/ ~ q

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: tauto failed.

Unnamed_thm <

*)

Section DeMorgan_A.
Goal forall p q:Prop, ~(p /\ q) <-> (~p \/ ~q).
Require Import Classical.
intros.
tauto.
Qed.
