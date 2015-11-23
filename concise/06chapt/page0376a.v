(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Conjunction_A.

Coq < Goal forall e g:Prop, ((~e) /\ (~g)) -> (~e /\ ~g).
1 subgoal

  ============================
   forall e g : Prop, ~ e /\ ~ g -> ~ e /\ ~ g

Unnamed_thm < intros.
1 subgoal

  e : Prop
  g : Prop
  H : ~ e /\ ~ g
  ============================
   ~ e /\ ~ g

Unnamed_thm < exact H.
No more subgoals.

Unnamed_thm < Qed.
intros.
exact H.

Unnamed_thm is defined

Coq <


*)

Section Conjunction_A.
Goal forall e g:Prop, ((~e) /\ (~g)) -> (~e /\ ~g).
intros.
exact H.
Qed.
