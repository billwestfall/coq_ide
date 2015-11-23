(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Conjunction_B.

Coq < Goal forall c m d n:Prop, ((c -> m) /\ (d -> n)) -> ((c -> m) /\ (d -> n)).
1 subgoal

  ============================
   forall c m d n : Prop, (c -> m) /\ (d -> n) -> (c -> m) /\ (d -> n)

Unnamed_thm < intros.
1 subgoal

  c : Prop
  m : Prop
  d : Prop
  n : Prop
  H : (c -> m) /\ (d -> n)
  ============================
   (c -> m) /\ (d -> n)

Unnamed_thm < exact H.
No more subgoals.

Unnamed_thm < Qed.
intros.
exact H.

Unnamed_thm is defined

Coq <

*)

Section Conjunction_B.
Goal forall c m d n:Prop, ((c -> m) /\ (d -> n)) -> ((c -> m) /\ (d -> n)).
intros.
exact H.
Qed.
