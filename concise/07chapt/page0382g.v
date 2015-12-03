(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Ten.

Coq < Goal forall p r m:Prop, (((p -> r) -> (m -> p)) /\ ((p \/ m) -> (p -> r)) /\ (p \/ m)) -> (r \/ p).
1 subgoal
  
  ============================
   forall p r m : Prop,
   ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m) -> r \/ p

Unnamed_thm < intros.
1 subgoal
  
  p : Prop
  r : Prop
  m : Prop
  H : ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m)
  ============================
   r \/ p

Unnamed_thm < elim H.
1 subgoal
  
  p : Prop
  r : Prop
  m : Prop
  H : ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m)
  ============================
   ((p -> r) -> m -> p) -> (p \/ m -> p -> r) /\ (p \/ m) -> r \/ p

Unnamed_thm < intro.
1 subgoal
  
  p : Prop
  r : Prop
  m : Prop
  H : ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m)
  H0 : (p -> r) -> m -> p
  ============================
   (p \/ m -> p -> r) /\ (p \/ m) -> r \/ p

Unnamed_thm < intro.
1 subgoal
  
  p : Prop
  r : Prop
  m : Prop
  H : ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m)
  H0 : (p -> r) -> m -> p
  H1 : (p \/ m -> p -> r) /\ (p \/ m)
  ============================
   r \/ p

Unnamed_thm < destruct H1.
1 subgoal
  
  p : Prop
  r : Prop
  m : Prop
  H : ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m)
  H0 : (p -> r) -> m -> p
  H1 : p \/ m -> p -> r
  H2 : p \/ m
  ============================
   r \/ p

Unnamed_thm < right.
1 subgoal
  
  p : Prop
  r : Prop
  m : Prop
  H : ((p -> r) -> m -> p) /\ (p \/ m -> p -> r) /\ (p \/ m)
  H0 : (p -> r) -> m -> p
  H1 : p \/ m -> p -> r
  H2 : p \/ m
  ============================
   p

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H1.
right.
firstorder  .

Unnamed_thm is defined

Coq <
*)

Section Exercise_Ten.
Goal forall p r m:Prop, (((p -> r) -> (m -> p)) /\ ((p \/ m) -> (p -> r)) /\ (p \/ m)) -> (r \/ p).
intros.
elim H.
intro.
intro.
destruct H1.
right.
 firstorder.
 Qed.
