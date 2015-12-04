(*
MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Practice_04.

Coq < Goal forall a b c:Prop, (((a /\ b) \/ c) /\ (b \/ c) /\ a) -> ( a ).
1 subgoal
  
  ============================
   forall a b c : Prop, (a /\ b \/ c) /\ (b \/ c) /\ a -> a

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b \/ c) /\ (b \/ c) /\ a
  ============================
   a

Unnamed_thm < elim H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b \/ c) /\ (b \/ c) /\ a
  ============================
   a /\ b \/ c -> (b \/ c) /\ a -> a

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b \/ c) /\ (b \/ c) /\ a
  H0 : a /\ b \/ c
  ============================
   (b \/ c) /\ a -> a

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b \/ c) /\ (b \/ c) /\ a
  H0 : a /\ b \/ c
  H1 : (b \/ c) /\ a
  ============================
   a

Unnamed_thm < apply H1.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply H1.

Unnamed_thm is defined

Coq < 
*)

Section Practice_04.
Goal forall a b c:Prop, (((a /\ b) \/ c) /\ (b \/ c) /\ a) -> ( a ).
intros.
elim H.
intro.
intro.
apply H1.
Qed.
