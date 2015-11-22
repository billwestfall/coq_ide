(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Simplification_C.

Coq < Goal forall x z m g h:Prop, (((x -> z) /\ m) /\ (g -> h)) -> ((x -> z) /\ m).
1 subgoal

  ============================
   forall x z m g h : Prop, ((x -> z) /\ m) /\ (g -> h) -> (x -> z) /\ m

Unnamed_thm < intros.
1 subgoal

  x : Prop
  z : Prop
  m : Prop
  g : Prop
  h : Prop
  H : ((x -> z) /\ m) /\ (g -> h)
  ============================
   (x -> z) /\ m

Unnamed_thm < apply H.
No more subgoals.

Unnamed_thm < Qed.
intros.
apply H.

Unnamed_thm is defined

Coq <


*)

Section Simplification_C.
Goal forall x z m g h:Prop, (((x -> z) /\ m) /\ (g -> h)) -> ((x -> z) /\ m).
intros.
apply H.
Qed.
