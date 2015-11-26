(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_F.

Coq < Goal forall e a c f:Prop, ((e -> (a /\ c)) /\ (a -> (f /\ e)) /\ e) -> f.
1 subgoal

  ============================
   forall e a c f : Prop, (e -> a /\ c) /\ (a -> f /\ e) /\ e -> f

Unnamed_thm < intros.
1 subgoal

  e : Prop
  a : Prop
  c : Prop
  f : Prop
  H : (e -> a /\ c) /\ (a -> f /\ e) /\ e
  ============================
   f

Unnamed_thm < elim H.
1 subgoal

  e : Prop
  a : Prop
  c : Prop
  f : Prop
  H : (e -> a /\ c) /\ (a -> f /\ e) /\ e
  ============================
   (e -> a /\ c) -> (a -> f /\ e) /\ e -> f

Unnamed_thm < intro.
1 subgoal

  e : Prop
  a : Prop
  c : Prop
  f : Prop
  H : (e -> a /\ c) /\ (a -> f /\ e) /\ e
  H0 : e -> a /\ c
  ============================
   (a -> f /\ e) /\ e -> f

Unnamed_thm < intro.
1 subgoal

  e : Prop
  a : Prop
  c : Prop
  f : Prop
  H : (e -> a /\ c) /\ (a -> f /\ e) /\ e
  H0 : e -> a /\ c
  H1 : (a -> f /\ e) /\ e
  ============================
   f

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder.

Unnamed_thm is defined

Coq <
*)

Section Exercise_F.
Goal forall e a c f:Prop, ((e -> (a /\ c)) /\ (a -> (f /\ e)) /\ e) -> f.
intros.
elim H.
intro.
intro.
firstorder.
Qed.
