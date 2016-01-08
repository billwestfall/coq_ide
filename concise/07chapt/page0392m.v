(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_14.

Coq < Goal forall i m g:Prop, ((((i \/ m) \/ g) -> ~g) /\ (m \/ g)) -> m.
1 subgoal

  ============================
   forall i m g : Prop, ((i \/ m) \/ g -> ~ g) /\ (m \/ g) -> m

Unnamed_thm < intros.
1 subgoal

  i : Prop
  m : Prop
  g : Prop
  H : ((i \/ m) \/ g -> ~ g) /\ (m \/ g)
  ============================
   m

Unnamed_thm < elim H.
1 subgoal

  i : Prop
  m : Prop
  g : Prop
  H : ((i \/ m) \/ g -> ~ g) /\ (m \/ g)
  ============================
   ((i \/ m) \/ g -> ~ g) -> m \/ g -> m

Unnamed_thm < intro.
1 subgoal

  i : Prop
  m : Prop
  g : Prop
  H : ((i \/ m) \/ g -> ~ g) /\ (m \/ g)
  H0 : (i \/ m) \/ g -> ~ g
  ============================
   m \/ g -> m

Unnamed_thm < intro.
1 subgoal

  i : Prop
  m : Prop
  g : Prop
  H : ((i \/ m) \/ g -> ~ g) /\ (m \/ g)
  H0 : (i \/ m) \/ g -> ~ g
  H1 : m \/ g
  ============================
   m

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
Section Exercise_14.
Goal forall i m g:Prop, ((((i \/ m) \/ g) -> ~g) /\ (m \/ g)) -> m.
intros.
elim H.
intro.
intro.
 firstorder .
 Qed.
