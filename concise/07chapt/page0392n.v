(*
MacBook-Air:shpotify billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_15.

Coq < Goal forall e b u c:Prop, ((e -> ~b) /\ (u -> ~c) /\ ~(~e /\ ~u)) -> ~(b /\ c).
1 subgoal

  ============================
   forall e b u c : Prop,
   (e -> ~ b) /\ (u -> ~ c) /\ ~ (~ e /\ ~ u) -> ~ (b /\ c)

Unnamed_thm < intros.
1 subgoal

  e : Prop
  b : Prop
  u : Prop
  c : Prop
  H : (e -> ~ b) /\ (u -> ~ c) /\ ~ (~ e /\ ~ u)
  ============================
   ~ (b /\ c)

Unnamed_thm < elim H.
1 subgoal

  e : Prop
  b : Prop
  u : Prop
  c : Prop
  H : (e -> ~ b) /\ (u -> ~ c) /\ ~ (~ e /\ ~ u)
  ============================
   (e -> ~ b) -> (u -> ~ c) /\ ~ (~ e /\ ~ u) -> ~ (b /\ c)

Unnamed_thm < intro.
1 subgoal

  e : Prop
  b : Prop
  u : Prop
  c : Prop
  H : (e -> ~ b) /\ (u -> ~ c) /\ ~ (~ e /\ ~ u)
  H0 : e -> ~ b
  ============================
   (u -> ~ c) /\ ~ (~ e /\ ~ u) -> ~ (b /\ c)

Unnamed_thm < intro.
1 subgoal

  e : Prop
  b : Prop
  u : Prop
  c : Prop
  H : (e -> ~ b) /\ (u -> ~ c) /\ ~ (~ e /\ ~ u)
  H0 : e -> ~ b
  H1 : (u -> ~ c) /\ ~ (~ e /\ ~ u)
  ============================
   ~ (b /\ c)

Unnamed_thm < intro.
1 subgoal

  e : Prop
  b : Prop
  u : Prop
  c : Prop
  H : (e -> ~ b) /\ (u -> ~ c) /\ ~ (~ e /\ ~ u)
  H0 : e -> ~ b
  H1 : (u -> ~ c) /\ ~ (~ e /\ ~ u)
  H2 : b /\ c
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
Section Exercise_15.
Goal forall e b u c:Prop, ((e -> ~b) /\ (u -> ~c) /\ ~(~e /\ ~u)) -> ~(b /\ c).
intros.
elim H.
intro.
intro.
intro.
 firstorder .
 Qed.
