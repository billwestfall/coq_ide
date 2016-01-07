(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_13.

Coq < Goal forall f a l d:Prop, (~(f /\ a) /\ ~(l \/ ~a) /\ (d -> (f \/ l))) -> (~d).
1 subgoal

  ============================
   forall f a l d : Prop, ~ (f /\ a) /\ ~ (l \/ ~ a) /\ (d -> f \/ l) -> ~ d

Unnamed_thm < intros.
1 subgoal

  f : Prop
  a : Prop
  l : Prop
  d : Prop
  H : ~ (f /\ a) /\ ~ (l \/ ~ a) /\ (d -> f \/ l)
  ============================
   ~ d

Unnamed_thm < elim H.
1 subgoal

  f : Prop
  a : Prop
  l : Prop
  d : Prop
  H : ~ (f /\ a) /\ ~ (l \/ ~ a) /\ (d -> f \/ l)
  ============================
   ~ (f /\ a) -> ~ (l \/ ~ a) /\ (d -> f \/ l) -> ~ d

Unnamed_thm < intro.
1 subgoal

  f : Prop
  a : Prop
  l : Prop
  d : Prop
  H : ~ (f /\ a) /\ ~ (l \/ ~ a) /\ (d -> f \/ l)
  H0 : ~ (f /\ a)
  ============================
   ~ (l \/ ~ a) /\ (d -> f \/ l) -> ~ d

Unnamed_thm < intro.
1 subgoal

  f : Prop
  a : Prop
  l : Prop
  d : Prop
  H : ~ (f /\ a) /\ ~ (l \/ ~ a) /\ (d -> f \/ l)
  H0 : ~ (f /\ a)
  H1 : ~ (l \/ ~ a) /\ (d -> f \/ l)
  ============================
   ~ d

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

Require Import Classical.
Section Exercise_13.
Goal forall f a l d:Prop, (~(f /\ a) /\ ~(l \/ ~a) /\ (d -> (f \/ l))) -> (~d).
intros.
elim H.
intro.
intro.
 firstorder .
 Qed.
