(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_5.

Coq < Goal forall q l c:Prop, ((q \/ (l \/ c)) /\ ~c) -> (l \/ q).
1 subgoal

  ============================
   forall q l c : Prop, (q \/ l \/ c) /\ ~ c -> l \/ q

Unnamed_thm < intros.
1 subgoal

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  ============================
   l \/ q

Unnamed_thm < elim H.
1 subgoal

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  ============================
   q \/ l \/ c -> ~ c -> l \/ q

Unnamed_thm < intro.
1 subgoal

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  H0 : q \/ l \/ c
  ============================
   ~ c -> l \/ q

Unnamed_thm < intro.
1 subgoal

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  H0 : q \/ l \/ c
  H1 : ~ c
  ============================
   l \/ q

Unnamed_thm < destruct H0.
2 subgoals

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  H0 : q
  H1 : ~ c
  ============================
   l \/ q

subgoal 2 is:
 l \/ q

Unnamed_thm < right.
2 subgoals

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  H0 : q
  H1 : ~ c
  ============================
   q

subgoal 2 is:
 l \/ q

Unnamed_thm < exact H0.
1 subgoal

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  H0 : l \/ c
  H1 : ~ c
  ============================
   l \/ q

Unnamed_thm < left.
1 subgoal

  q : Prop
  l : Prop
  c : Prop
  H : (q \/ l \/ c) /\ ~ c
  H0 : l \/ c
  H1 : ~ c
  ============================
   l

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H0.
 right.
 exact H0.
 left.
 firstorder.

Unnamed_thm is defined

Coq <
*)

Section Exercise_5.
Goal forall q l c:Prop, ((q \/ (l \/ c)) /\ ~c) -> (l \/ q).
intros.
elim H.
intro.
intro.
destruct H0.
 right.
 exact H0.
 left.
 firstorder.
Qed.
