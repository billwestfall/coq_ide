(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Conjunctive_StratA.

Coq < Goal forall a b c:Prop, ((a -> b) /\ (c /\ b) /\ (c -> a)) -> c.
1 subgoal

  ============================
   forall a b c : Prop, (a -> b) /\ (c /\ b) /\ (c -> a) -> c

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a -> b) /\ (c /\ b) /\ (c -> a)
  ============================
   c

Unnamed_thm < destruct H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : a -> b
  H0 : (c /\ b) /\ (c -> a)
  ============================
   c

Unnamed_thm < destruct H0.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : a -> b
  H0 : c /\ b
  H1 : c -> a
  ============================
   c

Unnamed_thm < apply H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
destruct H0.
apply H0.

Unnamed_thm is defined

Coq <

*)

Section Combination_B.
Goal forall a b c:Prop, ((a -> b) /\ (c /\ b) /\ (c -> a)) -> c.
intros.
destruct H.
destruct H0.
apply H0.
Qed.
