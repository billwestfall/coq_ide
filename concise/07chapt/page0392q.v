(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_18.

Coq < Goal forall p i l c e f d:Prop, ((p \/ (i /\ l)) /\ ((p \/ i) -> (~(l \/ c))) /\ ((p /\ ~c) -> (e /\ f))) -> (f \/ d).
1 subgoal

  ============================
   forall p i l c e f d : Prop,
   (p \/ i /\ l) /\ (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f) -> f \/ d

Unnamed_thm < intros.
1 subgoal

  p : Prop
  i : Prop
  l : Prop
  c : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (p \/ i /\ l) /\ (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  ============================
   f \/ d

Unnamed_thm < elim H.
1 subgoal

  p : Prop
  i : Prop
  l : Prop
  c : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (p \/ i /\ l) /\ (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  ============================
   p \/ i /\ l -> (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f) -> f \/ d

Unnamed_thm < intro.
1 subgoal

  p : Prop
  i : Prop
  l : Prop
  c : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (p \/ i /\ l) /\ (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  H0 : p \/ i /\ l
  ============================
   (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f) -> f \/ d

Unnamed_thm < intro.
1 subgoal

  p : Prop
  i : Prop
  l : Prop
  c : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (p \/ i /\ l) /\ (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  H0 : p \/ i /\ l
  H1 : (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  ============================
   f \/ d

Unnamed_thm < left.
1 subgoal

  p : Prop
  i : Prop
  l : Prop
  c : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (p \/ i /\ l) /\ (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  H0 : p \/ i /\ l
  H1 : (p \/ i -> ~ (l \/ c)) /\ (p /\ ~ c -> e /\ f)
  ============================
   f

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
left.
firstorder .

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_18.
Goal forall p i l c e f d:Prop, ((p \/ (i /\ l)) /\ ((p \/ i) -> (~(l \/ c))) /\ ((p /\ ~c) -> (e /\ f))) -> (f \/ d).
intros.
elim H.
intro.
intro.
left.
 firstorder .
 Qed.
