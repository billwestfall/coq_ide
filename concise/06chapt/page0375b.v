(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Simplification_B.

Coq < Goal forall m t s r:Prop, ((m \/ t) /\ (s -> r)) -> (m \/ t).
1 subgoal

  ============================
   forall m t s r : Prop, (m \/ t) /\ (s -> r) -> m \/ t

Unnamed_thm < intros.
1 subgoal

  m : Prop
  t : Prop
  s : Prop
  r : Prop
  H : (m \/ t) /\ (s -> r)
  ============================
   m \/ t

Unnamed_thm < apply H.
No more subgoals.

Unnamed_thm < Qed.
intros.
apply H.

Unnamed_thm is defined

Coq <

*)

Section Simplification_A.
Goal forall m t s r:Prop, ((m \/ t) /\ (s -> r)) -> (m \/ t).
intros.
apply H.
Qed.
