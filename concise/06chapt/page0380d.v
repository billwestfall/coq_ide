(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_B.

Coq < Goal forall p s e f t g h u:Prop, (((p \/ s) -> (e -> f)) /\ ((p \/ t) -> (g -> h)) /\ ((p \/ u) -> (e \/ g)) /\ p) -> (f \/ h).
1 subgoal

  ============================
   forall p s e f t g h u : Prop,
   (p \/ s -> e -> f) /\ (p \/ t -> g -> h) /\ (p \/ u -> e \/ g) /\ p ->
   f \/ h

Unnamed_thm < intros.
1 subgoal

  p : Prop
  s : Prop
  e : Prop
  f : Prop
  t : Prop
  g : Prop
  h : Prop
  u : Prop
  H : (p \/ s -> e -> f) /\ (p \/ t -> g -> h) /\ (p \/ u -> e \/ g) /\ p
  ============================
   f \/ h

Unnamed_thm < destruct H.
1 subgoal

  p : Prop
  s : Prop
  e : Prop
  f : Prop
  t : Prop
  g : Prop
  h : Prop
  u : Prop
  H : p \/ s -> e -> f
  H0 : (p \/ t -> g -> h) /\ (p \/ u -> e \/ g) /\ p
  ============================
   f \/ h

Unnamed_thm < destruct H0.
1 subgoal

  p : Prop
  s : Prop
  e : Prop
  f : Prop
  t : Prop
  g : Prop
  h : Prop
  u : Prop
  H : p \/ s -> e -> f
  H0 : p \/ t -> g -> h
  H1 : (p \/ u -> e \/ g) /\ p
  ============================
   f \/ h

Unnamed_thm < destruct H1.
1 subgoal

  p : Prop
  s : Prop
  e : Prop
  f : Prop
  t : Prop
  g : Prop
  h : Prop
  u : Prop
  H : p \/ s -> e -> f
  H0 : p \/ t -> g -> h
  H1 : p \/ u -> e \/ g
  H2 : p
  ============================
   f \/ h

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
destruct H0.
destruct H1.
firstorder.

Unnamed_thm is defined

Coq <

*)

Section Exercise_B.
Goal forall p s e f t g h u:Prop, (((p \/ s) -> (e -> f)) /\ ((p \/ t) -> (g -> h)) /\ ((p \/ u) -> (e \/ g)) /\ p) -> (f \/ h).
intros.
destruct H.
destruct H0.
destruct H1.
firstorder.
Qed.
