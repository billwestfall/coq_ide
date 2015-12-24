(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_7.

Coq < Goal forall h c t f:Prop, ((h /\ (c /\ t)) /\ ~(~f /\ t)) -> f.
1 subgoal

  ============================
   forall h c t f : Prop, (h /\ c /\ t) /\ ~ (~ f /\ t) -> f

Unnamed_thm < intros.
1 subgoal

  h : Prop
  c : Prop
  t : Prop
  f : Prop
  H : (h /\ c /\ t) /\ ~ (~ f /\ t)
  ============================
   f

Unnamed_thm < induction H.
1 subgoal

  h : Prop
  c : Prop
  t : Prop
  f : Prop
  H : h /\ c /\ t
  H0 : ~ (~ f /\ t)
  ============================
   f

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
Section Exercise_7.
Goal forall h c t f:Prop, ((h /\ (c /\ t)) /\ ~(~f /\ t)) -> f.
intros.
induction H.
tauto.
Qed.
