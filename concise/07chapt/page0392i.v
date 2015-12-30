(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Ten.

Coq < Require Import Classical.

Coq < Goal forall g h m t a:Prop, (((g /\ h) \/ (m /\ g)) /\ (g -> (t /\ a))) -> (a).
1 subgoal

  ============================
   forall g h m t a : Prop, (g /\ h \/ m /\ g) /\ (g -> t /\ a) -> a

Unnamed_thm < intros.
1 subgoal

  g : Prop
  h : Prop
  m : Prop
  t : Prop
  a : Prop
  H : (g /\ h \/ m /\ g) /\ (g -> t /\ a)
  ============================
   a

Unnamed_thm < elim H.
1 subgoal

  g : Prop
  h : Prop
  m : Prop
  t : Prop
  a : Prop
  H : (g /\ h \/ m /\ g) /\ (g -> t /\ a)
  ============================
   g /\ h \/ m /\ g -> (g -> t /\ a) -> a

Unnamed_thm < intro.
1 subgoal

  g : Prop
  h : Prop
  m : Prop
  t : Prop
  a : Prop
  H : (g /\ h \/ m /\ g) /\ (g -> t /\ a)
  H0 : g /\ h \/ m /\ g
  ============================
   (g -> t /\ a) -> a

Unnamed_thm < intro.
1 subgoal

  g : Prop
  h : Prop
  m : Prop
  t : Prop
  a : Prop
  H : (g /\ h \/ m /\ g) /\ (g -> t /\ a)
  H0 : g /\ h \/ m /\ g
  H1 : g -> t /\ a
  ============================
   a

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
Section Exercise_10.
Goal forall g h m t a:Prop, (((g /\ h) \/ (m /\ g)) /\ (g -> (t /\ a))) -> (a).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
