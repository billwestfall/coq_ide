(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Practice_09_not_sure.

Coq < Goal forall a b c d e f g h i j:Prop, ((a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)) -> (b \/ ~b).
1 subgoal

  ============================
   forall a b c d e f g h i j : Prop,
   (a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j) -> b \/ ~ b

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
  H : (a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)
  ============================
   b \/ ~ b

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
  H : (a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)
  ============================
   a \/ b -> (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j) -> b \/ ~ b

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
  H : (a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)
  H0 : a \/ b
  ============================
   (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j) -> b \/ ~ b

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
  H : (a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)
  H0 : a \/ b
  H1 : (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)
  ============================
   b \/ ~ b

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
tauto.

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Practice_09_not_sure.
Goal forall a b c d e f g h i j:Prop, ((a \/ b) /\ (c \/ d) /\ (e \/ f) /\ (g \/ h) /\ (i \/ j)) -> (b \/ ~b).
intros.
elim H.
intro.
intro.
tauto.
Qed.
