(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_D.

Coq < Goal forall d b c e:Prop, (((d -> b) /\ (c -> d)) /\ ((b -> d) /\ (e -> c)) /\ (b \/ e)) -> (d \/ b).
1 subgoal

  ============================
   forall d b c e : Prop,
   ((d -> b) /\ (c -> d)) /\ ((b -> d) /\ (e -> c)) /\ (b \/ e) -> d \/ b

Unnamed_thm < intros.
1 subgoal

  d : Prop
  b : Prop
  c : Prop
  e : Prop
  H : ((d -> b) /\ (c -> d)) /\ ((b -> d) /\ (e -> c)) /\ (b \/ e)
  ============================
   d \/ b

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
firstorder .

Unnamed_thm is defined

Coq <

*)

Section Exercise_D.
Goal forall d b c e:Prop, (((d -> b) /\ (c -> d)) /\ ((b -> d) /\ (e -> c)) /\ (b \/ e)) -> (d \/ b).
intros.
firstorder.
Qed.
