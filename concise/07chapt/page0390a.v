(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_1.

Coq < Goal forall j f m p:Prop, (((j \/ f) \/ m) /\ ((j \/ m) -> ~p) /\ (~f)) -> ~(f \/ p).
1 subgoal

  ============================
   forall j f m p : Prop,
   ((j \/ f) \/ m) /\ (j \/ m -> ~ p) /\ ~ f -> ~ (f \/ p)

Unnamed_thm < intros.
1 subgoal

  j : Prop
  f : Prop
  m : Prop
  p : Prop
  H : ((j \/ f) \/ m) /\ (j \/ m -> ~ p) /\ ~ f
  ============================
   ~ (f \/ p)

Unnamed_thm < elim H.
1 subgoal

  j : Prop
  f : Prop
  m : Prop
  p : Prop
  H : ((j \/ f) \/ m) /\ (j \/ m -> ~ p) /\ ~ f
  ============================
   (j \/ f) \/ m -> (j \/ m -> ~ p) /\ ~ f -> ~ (f \/ p)

Unnamed_thm < intro.
1 subgoal

  j : Prop
  f : Prop
  m : Prop
  p : Prop
  H : ((j \/ f) \/ m) /\ (j \/ m -> ~ p) /\ ~ f
  H0 : (j \/ f) \/ m
  ============================
   (j \/ m -> ~ p) /\ ~ f -> ~ (f \/ p)

Unnamed_thm < intro.
1 subgoal

  j : Prop
  f : Prop
  m : Prop
  p : Prop
  H : ((j \/ f) \/ m) /\ (j \/ m -> ~ p) /\ ~ f
  H0 : (j \/ f) \/ m
  H1 : (j \/ m -> ~ p) /\ ~ f
  ============================
   ~ (f \/ p)

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

Section Exercise_1.
Goal forall j f m p:Prop, (((j \/ f) \/ m) /\ ((j \/ m) -> ~p) /\ (~f)) -> ~(f \/ p).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
