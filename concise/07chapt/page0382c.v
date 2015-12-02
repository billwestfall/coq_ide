(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Seven.

Coq < Goal forall u w t r h j:Prop, (((u \/ w) -> (t -> r)) /\ (u /\ h) /\ (~r /\ ~j)) -> (u /\ ~t).
1 subgoal
  
  ============================
   forall u w t r h j : Prop,
   (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j -> u /\ ~ t

Unnamed_thm < intros.
1 subgoal
  
  u : Prop
  w : Prop
  t : Prop
  r : Prop
  h : Prop
  j : Prop
  H : (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j
  ============================
   u /\ ~ t

Unnamed_thm < elim H.
1 subgoal
  
  u : Prop
  w : Prop
  t : Prop
  r : Prop
  h : Prop
  j : Prop
  H : (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j
  ============================
   (u \/ w -> t -> r) -> (u /\ h) /\ ~ r /\ ~ j -> u /\ ~ t

Unnamed_thm < intro.
1 subgoal
  
  u : Prop
  w : Prop
  t : Prop
  r : Prop
  h : Prop
  j : Prop
  H : (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j
  H0 : u \/ w -> t -> r
  ============================
   (u /\ h) /\ ~ r /\ ~ j -> u /\ ~ t

Unnamed_thm < intro.
1 subgoal
  
  u : Prop
  w : Prop
  t : Prop
  r : Prop
  h : Prop
  j : Prop
  H : (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j
  H0 : u \/ w -> t -> r
  H1 : (u /\ h) /\ ~ r /\ ~ j
  ============================
   u /\ ~ t

Unnamed_thm < apply conj.
2 subgoals
  
  u : Prop
  w : Prop
  t : Prop
  r : Prop
  h : Prop
  j : Prop
  H : (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j
  H0 : u \/ w -> t -> r
  H1 : (u /\ h) /\ ~ r /\ ~ j
  ============================
   u

subgoal 2 is:
 ~ t

Unnamed_thm < firstorder.
1 subgoal
  
  u : Prop
  w : Prop
  t : Prop
  r : Prop
  h : Prop
  j : Prop
  H : (u \/ w -> t -> r) /\ (u /\ h) /\ ~ r /\ ~ j
  H0 : u \/ w -> t -> r
  H1 : (u /\ h) /\ ~ r /\ ~ j
  ============================
   ~ t

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
auto.
apply conj.
 auto.
 firstorder  .
 
 firstorder  .
 
Unnamed_thm is defined

Coq <
*)

Section Exercise_Seven.
Goal forall u w t r h j:Prop, (((u \/ w) -> (t -> r)) /\ (u /\ h) /\ (~r /\ ~j)) -> (u /\ ~t).
intros.
elim H.
intro.
intro.
apply conj.
 firstorder.
 firstorder.
 Qed.
