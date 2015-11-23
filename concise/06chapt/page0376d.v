(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Addition_A.

Coq < Goal forall s t:Prop, s -> (s \/ ~t).
1 subgoal

  ============================
   forall s t : Prop, s -> s \/ ~ t

Unnamed_thm < intros.
1 subgoal

  s : Prop
  t : Prop
  H : s
  ============================
   s \/ ~ t

Unnamed_thm < left.
1 subgoal

  s : Prop
  t : Prop
  H : s
  ============================
   s

Unnamed_thm < exact H.
No more subgoals.

Unnamed_thm < Qed.
intros.
left.
exact H.

Unnamed_thm is defined

Coq <

*)

Section Addition_A.
Goal forall s t:Prop, s -> (s \/ ~t).
intros.
left.
exact H.
Qed.
