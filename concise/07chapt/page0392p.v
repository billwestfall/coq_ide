(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_17.

Coq < Goal forall s i j r q:Prop, ((s \/ (i /\ ~j)) /\ (s -> ~r) /\ (~j -> ~q)) -> ~(r /\ q).
1 subgoal

  ============================
   forall s i j r q : Prop,
   (s \/ i /\ ~ j) /\ (s -> ~ r) /\ (~ j -> ~ q) -> ~ (r /\ q)

Unnamed_thm < intros.
1 subgoal

  s : Prop
  i : Prop
  j : Prop
  r : Prop
  q : Prop
  H : (s \/ i /\ ~ j) /\ (s -> ~ r) /\ (~ j -> ~ q)
  ============================
   ~ (r /\ q)

Unnamed_thm < elim H.
1 subgoal

  s : Prop
  i : Prop
  j : Prop
  r : Prop
  q : Prop
  H : (s \/ i /\ ~ j) /\ (s -> ~ r) /\ (~ j -> ~ q)
  ============================
   s \/ i /\ ~ j -> (s -> ~ r) /\ (~ j -> ~ q) -> ~ (r /\ q)

Unnamed_thm < intro.
1 subgoal

  s : Prop
  i : Prop
  j : Prop
  r : Prop
  q : Prop
  H : (s \/ i /\ ~ j) /\ (s -> ~ r) /\ (~ j -> ~ q)
  H0 : s \/ i /\ ~ j
  ============================
   (s -> ~ r) /\ (~ j -> ~ q) -> ~ (r /\ q)

Unnamed_thm < intro.
1 subgoal

  s : Prop
  i : Prop
  j : Prop
  r : Prop
  q : Prop
  H : (s \/ i /\ ~ j) /\ (s -> ~ r) /\ (~ j -> ~ q)
  H0 : s \/ i /\ ~ j
  H1 : (s -> ~ r) /\ (~ j -> ~ q)
  ============================
   ~ (r /\ q)

Unnamed_thm < intro.
1 subgoal

  s : Prop
  i : Prop
  j : Prop
  r : Prop
  q : Prop
  H : (s \/ i /\ ~ j) /\ (s -> ~ r) /\ (~ j -> ~ q)
  H0 : s \/ i /\ ~ j
  H1 : (s -> ~ r) /\ (~ j -> ~ q)
  H2 : r /\ q
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
Section Exercise_17.
Goal forall s i j r q:Prop, ((s \/ (i /\ ~j)) /\ (s -> ~r) /\ (~j -> ~q)) -> ~(r /\ q).
intros.
elim H.
intro.
intro.
intro.
 firstorder .
 Qed.
