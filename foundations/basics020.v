Welcome to Coq 8.4pl4 (November 2015)

Coq < Theorem plus_n_0 : forall n : nat, n = n + 0.
1 subgoal
  
  ============================
   forall n : nat, n = n + 0

plus_n_0 < Proof.
1 subgoal
  
  ============================
   forall n : nat, n = n + 0

plus_n_0 < intros n.
1 subgoal
  
  n : nat
  ============================
   n = n + 0

plus_n_0 < induction n as [| n' IHn'].
2 subgoals
  
  ============================
   0 = 0 + 0

subgoal 2 is:
 S n' = S n' + 0

plus_n_0 < reflexivity.
1 subgoal
  
  n' : nat
  IHn' : n' = n' + 0
  ============================
   S n' = S n' + 0

plus_n_0 < simpl.
1 subgoal
  
  n' : nat
  IHn' : n' = n' + 0
  ============================
   S n' = S (n' + 0)

plus_n_0 < rewrite <- IHn'.
1 subgoal
  
  n' : nat
  IHn' : n' = n' + 0
  ============================
   S n' = S n'

plus_n_0 < reflexivity.
No more subgoals.

plus_n_0 < Qed.
intros n.
induction n as [| n' IHn'].
 reflexivity.

 simpl.
 rewrite <- IHn'.
 reflexivity.

plus_n_0 is defined
