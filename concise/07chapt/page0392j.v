(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_11.

Coq < Goal forall d s c t:Prop, (((d /\ s) \/ (c /\ t)) /\ ~t) -> (s).
1 subgoal

  ============================
   forall d s c t : Prop, (d /\ s \/ c /\ t) /\ ~ t -> s

Unnamed_thm < intros.
1 subgoal

  d : Prop
  s : Prop
  c : Prop
  t : Prop
  H : (d /\ s \/ c /\ t) /\ ~ t
  ============================
   s

Unnamed_thm < elim H.
1 subgoal

  d : Prop
  s : Prop
  c : Prop
  t : Prop
  H : (d /\ s \/ c /\ t) /\ ~ t
  ============================
   d /\ s \/ c /\ t -> ~ t -> s

Unnamed_thm < intro.
1 subgoal

  d : Prop
  s : Prop
  c : Prop
  t : Prop
  H : (d /\ s \/ c /\ t) /\ ~ t
  H0 : d /\ s \/ c /\ t
  ============================
   ~ t -> s

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
firstorder .

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_10.
Goal forall d s c t:Prop, (((d /\ s) \/ (c /\ t)) /\ ~t) -> (s).
intros.
elim H.
intro.
firstorder.
Qed.
