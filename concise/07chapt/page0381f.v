(*
Last login: Wed Nov 25 19:21:08 on ttys000
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_H.

Coq < Goal forall l b t g k r:Prop, (((l \/ t) -> (b /\ g)) /\ l /\ (k <-> r)) -> (l /\ b).
1 subgoal

  ============================
   forall l b t g k r : Prop, (l \/ t -> b /\ g) /\ l /\ (k <-> r) -> l /\ b

Unnamed_thm < intros.
1 subgoal

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  ============================
   l /\ b

Unnamed_thm < elim H.
1 subgoal

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  ============================
   (l \/ t -> b /\ g) -> l /\ (k <-> r) -> l /\ b

Unnamed_thm < intro.
1 subgoal

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  H0 : l \/ t -> b /\ g
  ============================
   l /\ (k <-> r) -> l /\ b

Unnamed_thm < intro.
1 subgoal

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  H0 : l \/ t -> b /\ g
  H1 : l /\ (k <-> r)
  ============================
   l /\ b

Unnamed_thm < destruct H0.
2 subgoals

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  H1 : l /\ (k <-> r)
  ============================
   l \/ t

subgoal 2 is:
 l /\ b

Unnamed_thm < destruct H1.
2 subgoals

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  H0 : l
  H1 : k <-> r
  ============================
   l \/ t

subgoal 2 is:
 l /\ b

Unnamed_thm < left.
2 subgoals

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  H0 : l
  H1 : k <-> r
  ============================
   l

subgoal 2 is:
 l /\ b

Unnamed_thm < exact H0.
1 subgoal

  l : Prop
  b : Prop
  t : Prop
  g : Prop
  k : Prop
  r : Prop
  H : (l \/ t -> b /\ g) /\ l /\ (k <-> r)
  H0 : b
  H2 : g
  H1 : l /\ (k <-> r)
  ============================
   l /\ b

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H0.
 destruct H1.
 left.
 exact H0.
 firstorder.

Unnamed_thm is defined

Coq <

*)

Section Exercise_H.
Goal forall l b t g k r:Prop, (((l \/ t) -> (b /\ g)) /\ l /\ (k <-> r)) -> (l /\ b).
intros.
elim H.
intro.
intro.
destruct H0.
 destruct H1.
 left.
 exact H0.
 firstorder.
Qed.
