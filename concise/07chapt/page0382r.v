(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Eighteen.

Coq < Goal forall a d b f c e:Prop, (((~a \/ d) -> (b -> f)) /\ ((b \/ c) -> (a -> e)) /\ (a \/ b) /\ (~a)) -> (e \/ f).
1 subgoal

  ============================
   forall a d b f c e : Prop,
   (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a -> e \/ f

Unnamed_thm < intros.
1 subgoal

  a : Prop
  d : Prop
  b : Prop
  f : Prop
  c : Prop
  e : Prop
  H : (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  ============================
   e \/ f

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  d : Prop
  b : Prop
  f : Prop
  c : Prop
  e : Prop
  H : (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  ============================
   (~ a \/ d -> b -> f) -> (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a -> e \/ f

Unnamed_thm < intro.
1 subgoal

  a : Prop
  d : Prop
  b : Prop
  f : Prop
  c : Prop
  e : Prop
  H : (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  H0 : ~ a \/ d -> b -> f
  ============================
   (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a -> e \/ f

Unnamed_thm < intro.
1 subgoal

  a : Prop
  d : Prop
  b : Prop
  f : Prop
  c : Prop
  e : Prop
  H : (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  H0 : ~ a \/ d -> b -> f
  H1 : (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  ============================
   e \/ f

Unnamed_thm < destruct H1.
1 subgoal

  a : Prop
  d : Prop
  b : Prop
  f : Prop
  c : Prop
  e : Prop
  H : (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  H0 : ~ a \/ d -> b -> f
  H1 : b \/ c -> a -> e
  H2 : (a \/ b) /\ ~ a
  ============================
   e \/ f

Unnamed_thm < right.
1 subgoal

  a : Prop
  d : Prop
  b : Prop
  f : Prop
  c : Prop
  e : Prop
  H : (~ a \/ d -> b -> f) /\ (b \/ c -> a -> e) /\ (a \/ b) /\ ~ a
  H0 : ~ a \/ d -> b -> f
  H1 : b \/ c -> a -> e
  H2 : (a \/ b) /\ ~ a
  ============================
   f

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
right.
firstorder .

Unnamed_thm is defined

Coq <

*)

Section Exercise_Eighteen.
Goal forall a d b f c e:Prop, (((~a \/ d) -> (b -> f)) /\ ((b \/ c) -> (a -> e)) /\ (a \/ b) /\ (~a)) -> (e \/ f).
intros.
elim H.
intro.
intro.
right.
firstorder.
Qed.
