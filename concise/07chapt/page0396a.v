(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_01.

Coq < Goal forall a b:Prop, ~(a) -> (a -> b).
1 subgoal

  ============================
   forall a b : Prop, ~ a -> a -> b

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  H : ~ a
  H0 : a
  ============================
   b

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_01.
Goal forall a b:Prop, ~(a) -> (a -> b).
intros.
 tauto.
 Qed.
