(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Practice_02.

Coq < Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ c).
1 subgoal
  
  ============================
   forall a b c : Prop, (a \/ b) /\ (b \/ c) -> a \/ b \/ c

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c)
  ============================
   a \/ b \/ c

Unnamed_thm < elim H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c)
  ============================
   a \/ b -> b \/ c -> a \/ b \/ c

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c)
  H0 : a \/ b
  ============================
   b \/ c -> a \/ b \/ c

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c)
  H0 : a \/ b
  H1 : b \/ c
  ============================
   a \/ b \/ c

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder  .

Unnamed_thm is defined

Coq <
*)

Section Practice_02.
Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c)) -> (a \/ b \/ c).
intros.
elim H.
intro.
intro.
 firstorder.
 Qed.
