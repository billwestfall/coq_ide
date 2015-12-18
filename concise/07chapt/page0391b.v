(*
Last login: Thu Dec 17 09:09:30 on ttys001
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_5.

Coq < Goal forall t r p g n h:Prop, (((t /\ r) -> p) /\ ((~p /\ r) /\ g) /\ ((~t \/ n) -> h)) -> h.
1 subgoal

  ============================
   forall t r p g n h : Prop,
   (t /\ r -> p) /\ ((~ p /\ r) /\ g) /\ (~ t \/ n -> h) -> h

Unnamed_thm < intros.
1 subgoal

  t : Prop
  r : Prop
  p : Prop
  g : Prop
  n : Prop
  h : Prop
  H : (t /\ r -> p) /\ ((~ p /\ r) /\ g) /\ (~ t \/ n -> h)
  ============================
   h

Unnamed_thm < elim H.
1 subgoal

  t : Prop
  r : Prop
  p : Prop
  g : Prop
  n : Prop
  h : Prop
  H : (t /\ r -> p) /\ ((~ p /\ r) /\ g) /\ (~ t \/ n -> h)
  ============================
   (t /\ r -> p) -> ((~ p /\ r) /\ g) /\ (~ t \/ n -> h) -> h

Unnamed_thm < intro.
1 subgoal

  t : Prop
  r : Prop
  p : Prop
  g : Prop
  n : Prop
  h : Prop
  H : (t /\ r -> p) /\ ((~ p /\ r) /\ g) /\ (~ t \/ n -> h)
  H0 : t /\ r -> p
  ============================
   ((~ p /\ r) /\ g) /\ (~ t \/ n -> h) -> h

Unnamed_thm < intro.
1 subgoal

  t : Prop
  r : Prop
  p : Prop
  g : Prop
  n : Prop
  h : Prop
  H : (t /\ r -> p) /\ ((~ p /\ r) /\ g) /\ (~ t \/ n -> h)
  H0 : t /\ r -> p
  H1 : ((~ p /\ r) /\ g) /\ (~ t \/ n -> h)
  ============================
   h

Unnamed_thm < destruct H1.
1 subgoal

  t : Prop
  r : Prop
  p : Prop
  g : Prop
  n : Prop
  h : Prop
  H : (t /\ r -> p) /\ ((~ p /\ r) /\ g) /\ (~ t \/ n -> h)
  H0 : t /\ r -> p
  H1 : (~ p /\ r) /\ g
  H2 : ~ t \/ n -> h
  ============================
   h

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H1.
firstorder .

Unnamed_thm is defined

Coq <
*)

Section Exercise_5.
Goal forall t r p g n h:Prop, (((t /\ r) -> p) /\ ((~p /\ r) /\ g) /\ ((~t \/ n) -> h)) -> h.
intros.
elim H.
intro.
intro.
destruct H1.
firstorder.
Qed.
