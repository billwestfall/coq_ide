(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_20.

Coq < Goal forall m e s u q h:Prop, (((~m \/ e) -> (s -> u)) /\ ((~q \/ e) -> (u -> h)) /\ (~(m \/ q))) -> (s -> h).
1 subgoal

  ============================
   forall m e s u q h : Prop,
   (~ m \/ e -> s -> u) /\ (~ q \/ e -> u -> h) /\ ~ (m \/ q) -> s -> h

Unnamed_thm < intros.
1 subgoal

  m : Prop
  e : Prop
  s : Prop
  u : Prop
  q : Prop
  h : Prop
  H : (~ m \/ e -> s -> u) /\ (~ q \/ e -> u -> h) /\ ~ (m \/ q)
  H0 : s
  ============================
   h

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  e : Prop
  s : Prop
  u : Prop
  q : Prop
  h : Prop
  H : (~ m \/ e -> s -> u) /\ (~ q \/ e -> u -> h) /\ ~ (m \/ q)
  H0 : s
  ============================
   (~ m \/ e -> s -> u) -> (~ q \/ e -> u -> h) /\ ~ (m \/ q) -> h

Unnamed_thm < intro.
1 subgoal

  m : Prop
  e : Prop
  s : Prop
  u : Prop
  q : Prop
  h : Prop
  H : (~ m \/ e -> s -> u) /\ (~ q \/ e -> u -> h) /\ ~ (m \/ q)
  H0 : s
  H1 : ~ m \/ e -> s -> u
  ============================
   (~ q \/ e -> u -> h) /\ ~ (m \/ q) -> h

Unnamed_thm < intro.
1 subgoal

  m : Prop
  e : Prop
  s : Prop
  u : Prop
  q : Prop
  h : Prop
  H : (~ m \/ e -> s -> u) /\ (~ q \/ e -> u -> h) /\ ~ (m \/ q)
  H0 : s
  H1 : ~ m \/ e -> s -> u
  H2 : (~ q \/ e -> u -> h) /\ ~ (m \/ q)
  ============================
   h

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_20.
Goal forall m e s u q h:Prop, (((~m \/ e) -> (s -> u)) /\ ((~q \/ e) -> (u -> h)) /\ (~(m \/ q))) -> (s -> h).
intros.
elim H.
intro.
intro.
 firstorder .
 Qed.
