(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Replacement_A.

Coq < Goal forall s t u:Prop, (s -> ~(t /\ u)) <-> (s -> (~t \/ ~u)).
1 subgoal

  ============================
   forall s t u : Prop, s -> ~ (t /\ u) <-> s -> ~ t \/ ~ u

Unnamed_thm < intros.
1 subgoal

  s : Prop
  t : Prop
  u : Prop
  ============================
   s -> ~ (t /\ u) <-> s -> ~ t \/ ~ u

Unnamed_thm < Require Import Classical.

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq <

*)

Section Replacement_A.
Goal forall s t u:Prop, (s -> ~(t /\ u)) <-> (s -> (~t \/ ~u)).
intros.
Require Import Classical.
tauto.
Qed.
