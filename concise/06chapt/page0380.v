(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Combination_C.

Coq < Goal forall a b c d:Prop, (((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c)) -> (b \/ d).
1 subgoal

  ============================
   forall a b c d : Prop,
   ((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c) -> b \/ d

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : ((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c)
  ============================
   b \/ d

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : ((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c)
  ============================
   (a -> b) /\ (c -> d) -> (b -> c) /\ (a \/ c) -> b \/ d

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : ((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c)
  H0 : (a -> b) /\ (c -> d)
  ============================
   (b -> c) /\ (a \/ c) -> b \/ d

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : ((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c)
  H0 : (a -> b) /\ (c -> d)
  H1 : (b -> c) /\ (a \/ c)
  ============================
   b \/ d

Unnamed_thm < destruct H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : (a -> b) /\ (c -> d)
  H2 : (b -> c) /\ (a \/ c)
  H0 : (a -> b) /\ (c -> d)
  H1 : (b -> c) /\ (a \/ c)
  ============================
   b \/ d

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H.
firstorder.

Unnamed_thm is defined

Coq <

*)

Section Combination_C.
Goal forall a b c d:Prop, (((a -> b) /\ (c -> d)) /\ (b -> c) /\ (a \/ c)) -> (b \/ d).
intros.
elim H.
intro.
intro.
destruct H.
firstorder.
Qed.
