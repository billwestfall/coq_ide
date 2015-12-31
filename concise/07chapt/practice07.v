(*
MacBook-Air:trunk billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Practice_07.

Coq < Goal forall a b c d e f g h i j:Prop, (((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ (i /\ j)) /\ ~f) -> ~b.
1 subgoal

  ============================
   forall a b c d e f g h i j : Prop,
   ((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j) /\ ~ f -> ~ b

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  f : Prop
  g : Prop
  h : Prop
  i : Prop
  j : Prop
  H : ((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j) /\ ~ f
  ============================
   ~ b

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  f : Prop
  g : Prop
  h : Prop
  i : Prop
  j : Prop
  H : ((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j) /\ ~ f
  ============================
   (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j -> ~ f -> ~ b

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  f : Prop
  g : Prop
  h : Prop
  i : Prop
  j : Prop
  H : ((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j) /\ ~ f
  H0 : (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j
  ============================
   ~ f -> ~ b

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
Section Practice_07.
Goal forall a b c d e f g h i j:Prop, (((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ (i /\ j)) /\ ~f) -> ~b.
intros.
elim H.
intro.
firstorder.
Qed.
