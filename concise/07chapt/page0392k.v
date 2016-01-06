(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_12.

Coq < Goal forall u r n p h q:Prop, (~(u \/ r) /\ ((~r \/ n) -> (p /\ h)) /\ (q -> ~h)) -> (~q).
1 subgoal

  ============================
   forall u r n p h q : Prop,
   ~ (u \/ r) /\ (~ r \/ n -> p /\ h) /\ (q -> ~ h) -> ~ q

Unnamed_thm < intros.
1 subgoal

  u : Prop
  r : Prop
  n : Prop
  p : Prop
  h : Prop
  q : Prop
  H : ~ (u \/ r) /\ (~ r \/ n -> p /\ h) /\ (q -> ~ h)
  ============================
   ~ q

Unnamed_thm < elim H.
1 subgoal

  u : Prop
  r : Prop
  n : Prop
  p : Prop
  h : Prop
  q : Prop
  H : ~ (u \/ r) /\ (~ r \/ n -> p /\ h) /\ (q -> ~ h)
  ============================
   ~ (u \/ r) -> (~ r \/ n -> p /\ h) /\ (q -> ~ h) -> ~ q

Unnamed_thm < intro.
1 subgoal

  u : Prop
  r : Prop
  n : Prop
  p : Prop
  h : Prop
  q : Prop
  H : ~ (u \/ r) /\ (~ r \/ n -> p /\ h) /\ (q -> ~ h)
  H0 : ~ (u \/ r)
  ============================
   (~ r \/ n -> p /\ h) /\ (q -> ~ h) -> ~ q

Unnamed_thm < intro.
1 subgoal

  u : Prop
  r : Prop
  n : Prop
  p : Prop
  h : Prop
  q : Prop
  H : ~ (u \/ r) /\ (~ r \/ n -> p /\ h) /\ (q -> ~ h)
  H0 : ~ (u \/ r)
  H1 : (~ r \/ n -> p /\ h) /\ (q -> ~ h)
  ============================
   ~ q

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
Section Exercise_12.
Goal forall u r n p h q:Prop, (~(u \/ r) /\ ((~r \/ n) -> (p /\ h)) /\ (q -> ~h)) -> (~q).
intros.
elim H.
intro.
intro.
 firstorder .
 Qed.
