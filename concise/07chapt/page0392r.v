(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_19.

Coq < Goal forall b s n w:Prop, ((b \/ (s /\ n)) /\ (b -> ~s) /\ (s -> ~n)) -> (b \/ w).
1 subgoal

  ============================
   forall b s n w : Prop, (b \/ s /\ n) /\ (b -> ~ s) /\ (s -> ~ n) -> b \/ w

Unnamed_thm < intros.
1 subgoal

  b : Prop
  s : Prop
  n : Prop
  w : Prop
  H : (b \/ s /\ n) /\ (b -> ~ s) /\ (s -> ~ n)
  ============================
   b \/ w

Unnamed_thm < elim H.
1 subgoal

  b : Prop
  s : Prop
  n : Prop
  w : Prop
  H : (b \/ s /\ n) /\ (b -> ~ s) /\ (s -> ~ n)
  ============================
   b \/ s /\ n -> (b -> ~ s) /\ (s -> ~ n) -> b \/ w

Unnamed_thm < intro.
1 subgoal

  b : Prop
  s : Prop
  n : Prop
  w : Prop
  H : (b \/ s /\ n) /\ (b -> ~ s) /\ (s -> ~ n)
  H0 : b \/ s /\ n
  ============================
   (b -> ~ s) /\ (s -> ~ n) -> b \/ w

Unnamed_thm < intro.
1 subgoal

  b : Prop
  s : Prop
  n : Prop
  w : Prop
  H : (b \/ s /\ n) /\ (b -> ~ s) /\ (s -> ~ n)
  H0 : b \/ s /\ n
  H1 : (b -> ~ s) /\ (s -> ~ n)
  ============================
   b \/ w

Unnamed_thm < left.
1 subgoal

  b : Prop
  s : Prop
  n : Prop
  w : Prop
  H : (b \/ s /\ n) /\ (b -> ~ s) /\ (s -> ~ n)
  H0 : b \/ s /\ n
  H1 : (b -> ~ s) /\ (s -> ~ n)
  ============================
   b

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
Section Exercise_19.
Goal forall b s n w:Prop, ((b \/ (s /\ n)) /\ (b -> ~s) /\ (s -> ~n)) -> (b \/ w).
intros.
elim H.
intro.
intro.
left.
 firstorder .
 Qed.
