(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Invalid_Form.

Coq < Goal forall c a e:Prop, (((~c -> a) /\ ((c -> e)) -> a) -> (~c -> (c -> e))).
1 subgoal

  ============================
   forall c a e : Prop, ((~ c -> a) /\ (c -> e) -> a) -> ~ c -> c -> e

Unnamed_thm < intros.
1 subgoal

  c : Prop
  a : Prop
  e : Prop
  H : (~ c -> a) /\ (c -> e) -> a
  H0 : ~ c
  H1 : c
  ============================
   e

*)

Section Invalid_Form.
Goal forall c a e:Prop, (((~c -> a) /\ ((c -> e)) -> a) -> (~c -> (c -> e))).
intros.
elim H.
intro.
intro.
apply H0.
exact H1.
Qed.
