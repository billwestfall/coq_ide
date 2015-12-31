(*
MacBook-Air:trunk billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Practice_08_this_should_fail.

Coq < Goal forall a b c d e f g h i j:Prop, ((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ (i /\ j)) -> ~b.
1 subgoal

  ============================
   forall a b c d e f g h i j : Prop,
   (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j -> ~ b

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
  H : (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j
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
  H : (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j
  ============================
   a /\ b -> (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j -> ~ b

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
  H : (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j
  H0 : a /\ b
  ============================
   (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j -> ~ b

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
  H : (a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j
  H0 : a /\ b
  H1 : (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ i /\ j
  ============================
   ~ b

Unnamed_thm < firstorder.
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
  H0 : a
  H2 : b
  H1 : c
  H6 : d
  H3 : e
  H7 : f
  H : a
  H9 : b
  H4 : c
  H10 : d
  H11 : i
  H13 : j
  H8 : e
  H14 : f
  H5 : g
  H15 : h
  H16 : i
  H17 : j
  H12 : g
  H18 : h
  ============================
   ~ b

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

*)

Require Import Classical.
Section Practice_08_this_should_fail.
Goal forall a b c d e f g h i j:Prop, ((a /\ b) /\ (c /\ d) /\ (e /\ f) /\ (g /\ h) /\ (i /\ j)) -> ~b.
intros.
elim H.
intro.
intro.
firstorder.
tauto.
