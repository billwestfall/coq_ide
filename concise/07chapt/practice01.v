(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Practice_01.

Coq < Goal forall a b:Prop, (a /\ b) -> a.
1 subgoal
  
  ============================
   forall a b : Prop, a /\ b -> a

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  H : a /\ b
  ============================
   a

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
firstorder  .

Unnamed_thm is defined

Coq <
*)

Section Practice_01.
Goal forall a b:Prop, (a \/ b) -> a.
intros.
 firstorder.
 Qed.
