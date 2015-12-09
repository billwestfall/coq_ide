(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Commutativity_A.

Coq < Goal forall p q:Prop, (p \/ q) <-> (q \/ p).
1 subgoal

  ============================
   forall p q : Prop, p \/ q <-> q \/ p

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  ============================
   p \/ q <-> q \/ p

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq <

*)

Section Commutativity_A.
Goal forall p q:Prop, (p \/ q) <-> (q \/ p).
intros.
tauto.
Qed.
