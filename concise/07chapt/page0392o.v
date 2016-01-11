(*
MacBook-Air:shpotify billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_16.

Coq < Goal forall k f c g h:Prop, (~(k \/ f) /\ (~f -> (k \/ c)) /\ ((g \/ c) -> ~h)) -> ~(k \/ h).
1 subgoal

  ============================
   forall k f c g h : Prop,
   ~ (k \/ f) /\ (~ f -> k \/ c) /\ (g \/ c -> ~ h) -> ~ (k \/ h)

Unnamed_thm < intros.
1 subgoal

  k : Prop
  f : Prop
  c : Prop
  g : Prop
  h : Prop
  H : ~ (k \/ f) /\ (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  ============================
   ~ (k \/ h)

Unnamed_thm < elim H.
1 subgoal

  k : Prop
  f : Prop
  c : Prop
  g : Prop
  h : Prop
  H : ~ (k \/ f) /\ (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  ============================
   ~ (k \/ f) -> (~ f -> k \/ c) /\ (g \/ c -> ~ h) -> ~ (k \/ h)

Unnamed_thm < intro.
1 subgoal

  k : Prop
  f : Prop
  c : Prop
  g : Prop
  h : Prop
  H : ~ (k \/ f) /\ (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  H0 : ~ (k \/ f)
  ============================
   (~ f -> k \/ c) /\ (g \/ c -> ~ h) -> ~ (k \/ h)

Unnamed_thm < intro.
1 subgoal

  k : Prop
  f : Prop
  c : Prop
  g : Prop
  h : Prop
  H : ~ (k \/ f) /\ (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  H0 : ~ (k \/ f)
  H1 : (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  ============================
   ~ (k \/ h)

Unnamed_thm < intro.
1 subgoal

  k : Prop
  f : Prop
  c : Prop
  g : Prop
  h : Prop
  H : ~ (k \/ f) /\ (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  H0 : ~ (k \/ f)
  H1 : (~ f -> k \/ c) /\ (g \/ c -> ~ h)
  H2 : k \/ h
  ============================
   False

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <


*)

Require Import Classical.
Section Exercise_16.
Goal forall k f c g h:Prop, (~(k \/ f) /\ (~f -> (k \/ c)) /\ ((g \/ c) -> ~h)) -> ~(k \/ h).
intros.
elim H.
intro.
intro.
intro.
 firstorder .
 Qed.
