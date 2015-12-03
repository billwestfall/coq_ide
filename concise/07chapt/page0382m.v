(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Fourteen.

Coq < Goal forall u p q o t:Prop, (((u /\ ~~p) -> (q)) /\ (~o -> u) /\ (~p -> o) /\ (~o /\ t)) -> (q).
1 subgoal
  
  ============================
   forall u p q o t : Prop,
   (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t -> q

Unnamed_thm < intros.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   q

Unnamed_thm < elim H.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   (u /\ ~ ~ p -> q) -> (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t -> q

Unnamed_thm < intro.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  H0 : u /\ ~ ~ p -> q
  ============================
   (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t -> q

Unnamed_thm < intro.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  H0 : u /\ ~ ~ p -> q
  H1 : (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   q

Unnamed_thm < apply H0.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  H0 : u /\ ~ ~ p -> q
  H1 : (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   u /\ ~ ~ p

Unnamed_thm < apply conj.
2 subgoals
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  H0 : u /\ ~ ~ p -> q
  H1 : (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   u

subgoal 2 is:
 ~ ~ p

Unnamed_thm < firstorder.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : (u /\ ~ ~ p -> q) /\ (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  H0 : u /\ ~ ~ p -> q
  H1 : (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   ~ ~ p

Unnamed_thm < destruct H.
1 subgoal
  
  u : Prop
  p : Prop
  q : Prop
  o : Prop
  t : Prop
  H : u /\ ~ ~ p -> q
  H2 : (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  H0 : u /\ ~ ~ p -> q
  H1 : (~ o -> u) /\ (~ p -> o) /\ ~ o /\ t
  ============================
   ~ ~ p

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply H0.
apply conj.
 firstorder  .
 
 destruct H.
 firstorder  .
 
Unnamed_thm is defined

Coq <
*)

Section Exercise_Fourteen.
Goal forall u p q o t:Prop, (((u /\ ~~p) -> (q)) /\ (~o -> u) /\ (~p -> o) /\ (~o /\ t)) -> (q).
intros.
elim H.
intro.
intro.
apply H0.
apply conj.
 firstorder.
 destruct H.
 firstorder.
 Qed.
