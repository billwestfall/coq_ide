(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section DeMorgan_B.

Coq < Goal forall p q:Prop, ~(p \/ q) <-> (~p /\ ~q).
1 subgoal

  ============================
   forall p q : Prop, ~ (p \/ q) <-> ~ p /\ ~ q

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  ============================
   ~ (p \/ q) <-> ~ p /\ ~ q

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
tauto.

Unnamed_thm is defined

Coq <

*)

Section DeMorgan_B.
Goal forall p q:Prop, ~(p \/ q) <-> (~p /\ ~q).
intros.
tauto.
Qed.
