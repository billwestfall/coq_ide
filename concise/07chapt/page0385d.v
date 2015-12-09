(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Distribution_B.

Coq < Goal forall p q r:Prop, (p \/ (q /\ r)) <-> ((p \/ q) /\ (p \/ r)).
1 subgoal

  ============================
   forall p q r : Prop, p \/ q /\ r <-> (p \/ q) /\ (p \/ r)

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  ============================
   p \/ q /\ r <-> (p \/ q) /\ (p \/ r)

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm <

*)

Section Distribution_B.
Goal forall p q r:Prop, (p \/ (q /\ r)) <-> ((p \/ q) /\ (p \/ r)).
intros.
tauto.
Qed.
