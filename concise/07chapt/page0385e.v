(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section DoubleNegation_A.

Coq < Goal forall p:Prop, p <-> ~~p.
1 subgoal

  ============================
   forall p : Prop, p <-> ~ ~ p

Unnamed_thm < intros.
1 subgoal

  p : Prop
  ============================
   p <-> ~ ~ p

Unnamed_thm < Require Import Classical.

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq <

*)

Section DoubleNegation_A.
Goal forall p:Prop, p <-> ~~p.
intros.
Require Import Classical.
tauto.
Qed.
