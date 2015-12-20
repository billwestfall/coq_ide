(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_3.

Coq < Goal forall r b d:Prop, ((r -> ~b) /\ (d \/ r) /\ b) -> d.
1 subgoal

  ============================
   forall r b d : Prop, (r -> ~ b) /\ (d \/ r) /\ b -> d

Unnamed_thm < intros.
1 subgoal

  r : Prop
  b : Prop
  d : Prop
  H : (r -> ~ b) /\ (d \/ r) /\ b
  ============================
   d

Unnamed_thm < elim H.
1 subgoal

  r : Prop
  b : Prop
  d : Prop
  H : (r -> ~ b) /\ (d \/ r) /\ b
  ============================
   (r -> ~ b) -> (d \/ r) /\ b -> d

Unnamed_thm < intro.
1 subgoal

  r : Prop
  b : Prop
  d : Prop
  H : (r -> ~ b) /\ (d \/ r) /\ b
  H0 : r -> ~ b
  ============================
   (d \/ r) /\ b -> d

Unnamed_thm < intro.
1 subgoal

  r : Prop
  b : Prop
  d : Prop
  H : (r -> ~ b) /\ (d \/ r) /\ b
  H0 : r -> ~ b
  H1 : (d \/ r) /\ b
  ============================
   d

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <

*)

Section Exercise_3.
Goal forall r b d:Prop, ((r -> ~b) /\ (d \/ r) /\ b) -> d.
intros.
elim H.
intro.
intro.
firstorder.
Qed.
