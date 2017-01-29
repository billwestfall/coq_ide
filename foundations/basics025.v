Welcome to Coq 8.4pl4 (November 2015)

Coq < Theorem plus_assoc' : forall n m p : nat, n + (m + p) = (n + m) + p.
1 subgoal
  
  ============================
   forall n m p : nat, n + (m + p) = n + m + p

plus_assoc' < Proof.
1 subgoal
  
  ============================
   forall n m p : nat, n + (m + p) = n + m + p

plus_assoc' < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  ============================
   forall n m p : nat, n + (m + p) = n + m + p

plus_assoc' < intros n m p.
1 subgoal
  
  n : nat
  m : nat
  p : nat
  ============================
   n + (m + p) = n + m + p

plus_assoc' < induction n as [| n' IHn'].
2 subgoals
  
  m : nat
  p : nat
  ============================
   0 + (m + p) = 0 + m + p

subgoal 2 is:
 S n' + (m + p) = S n' + m + p

plus_assoc' < reflexivity.
1 subgoal
  
  n' : nat
  m : nat
  p : nat
  IHn' : n' + (m + p) = n' + m + p
  ============================
   S n' + (m + p) = S n' + m + p

plus_assoc' < simpl.
1 subgoal
  
  n' : nat
  m : nat
  p : nat
  IHn' : n' + (m + p) = n' + m + p
  ============================
   S (n' + (m + p)) = S (n' + m + p)

plus_assoc' < rewrite -> IHn'.
1 subgoal
  
  n' : nat
  m : nat
  p : nat
  IHn' : n' + (m + p) = n' + m + p
  ============================
   S (n' + m + p) = S (n' + m + p)

plus_assoc' < reflexivity.
No more subgoals.

plus_assoc' < Qed.
info_auto.
intros n m p.
induction n as [| n' IHn'].
 reflexivity.

 simpl.
 rewrite IHn'.
 reflexivity.

plus_assoc' is defined
