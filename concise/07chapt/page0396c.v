(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_03.

Coq < Goal forall j k l:Prop, (j -> (k -> l)) -> (k -> (j -> l)).
1 subgoal

  ============================
   forall j k l : Prop, (j -> k -> l) -> k -> j -> l

Unnamed_thm < intros.
1 subgoal

  j : Prop
  k : Prop
  l : Prop
  H : j -> k -> l
  H0 : k
  H1 : j
  ============================
   l

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_03.
Goal forall j k l:Prop, (j -> (k -> l)) -> (k -> (j -> l)).
intros.
 tauto.
 Qed.
