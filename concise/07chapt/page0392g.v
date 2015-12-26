(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_8.

Coq < Goal forall e i m u:Prop, (((e /\ i) \/ (m /\ u)) /\ ~e) -> m.
1 subgoal

  ============================
   forall e i m u : Prop, (e /\ i \/ m /\ u) /\ ~ e -> m

Unnamed_thm < intros.
1 subgoal

  e : Prop
  i : Prop
  m : Prop
  u : Prop
  H : (e /\ i \/ m /\ u) /\ ~ e
  ============================
   m

Unnamed_thm < induction H.
1 subgoal

  e : Prop
  i : Prop
  m : Prop
  u : Prop
  H : e /\ i \/ m /\ u
  H0 : ~ e
  ============================
   m

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
induction H.
tauto.

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_8.
Goal forall e i m u:Prop, (((e /\ i) \/ (m /\ u)) /\ ~e) -> m.
intros.
induction H.
tauto.
Qed.
