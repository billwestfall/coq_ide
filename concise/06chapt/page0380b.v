(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Combination_D.

Coq < Goal forall a b c d:Prop, (((a \/ c) /\ b /\ (c -> d)) -> (b \/ d)).
1 subgoal

  ============================
   forall a b c d : Prop, (a \/ c) /\ b /\ (c -> d) -> b \/ d

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : (a \/ c) /\ b /\ (c -> d)
  ============================
   b \/ d

Unnamed_thm < destruct H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : a \/ c
  H0 : b /\ (c -> d)
  ============================
   b \/ d

Unnamed_thm < destruct H0.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : a \/ c
  H0 : b
  H1 : c -> d
  ============================
   b \/ d

Unnamed_thm < left.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  H : a \/ c
  H0 : b
  H1 : c -> d
  ============================
   b

Unnamed_thm < exact H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
destruct H0.
left.
exact H0.

Unnamed_thm is defined

Coq <

*)

Section Combination_D.
Goal forall a b c d:Prop, (((a \/ c) /\ b /\ (c -> d)) -> (b \/ d)).
intros.
destruct H.
destruct H0.
left.
exact H0.
Qed.
