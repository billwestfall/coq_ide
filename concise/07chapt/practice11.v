(*
MacBook-Air:shpotify billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Practice_11.

Coq < Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c) /\ (a \/ c) /\ (~a)) -> (b /\ c).
1 subgoal

  ============================
   forall a b c : Prop, (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a -> b /\ c

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a
  ============================
   b /\ c

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a
  ============================
   a \/ b -> (b \/ c) /\ (a \/ c) /\ ~ a -> b /\ c

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a
  H0 : a \/ b
  ============================
   (b \/ c) /\ (a \/ c) /\ ~ a -> b /\ c

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a
  H0 : a \/ b
  H1 : (b \/ c) /\ (a \/ c) /\ ~ a
  ============================
   b /\ c

Unnamed_thm < apply conj.
2 subgoals

  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a
  H0 : a \/ b
  H1 : (b \/ c) /\ (a \/ c) /\ ~ a
  ============================
   b

subgoal 2 is:
 c

Unnamed_thm < firstorder.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c) /\ ~ a
  H0 : a \/ b
  H1 : (b \/ c) /\ (a \/ c) /\ ~ a
  ============================
   c

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply conj.
 firstorder .
 firstorder .

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Practice_11.
Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c) /\ (a \/ c) /\ (~a)) -> (b /\ c).
intros.
elim H.
intro.
intro.
apply conj.
 firstorder .
 firstorder .
 Qed.
