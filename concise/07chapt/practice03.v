(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Practice_03.

Coq < Goal forall a b c:Prop, ((a /\ b) /\ (b /\ c)) -> ( b ).
1 subgoal
  
  ============================
   forall a b c : Prop, (a /\ b) /\ b /\ c -> b

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b) /\ b /\ c
  ============================
   b

Unnamed_thm < elim H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b) /\ b /\ c
  ============================
   a /\ b -> b /\ c -> b

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b) /\ b /\ c
  H0 : a /\ b
  ============================
   b /\ c -> b

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b) /\ b /\ c
  H0 : a /\ b
  H1 : b /\ c
  ============================
   b

Unnamed_thm < apply H1.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply H1.

Unnamed_thm is defined

Coq <
*)

Section Practice_03.
Goal forall a b c:Prop, ((a /\ b) /\ (b /\ c)) -> ( b ).
intros.
elim H.
intro.
intro.
 apply H1.
 Qed.
