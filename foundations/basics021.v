Welcome to Coq 8.4pl4 (November 2015)

Coq < Fixpoint minus (n m : nat) : nat := match n, m with | O, _ => O | S _ , O => n | S n', S m' => minus n' m' end.
minus is recursively defined (decreasing on 1st argument)

Coq < Theorem minus_diag : forall n, minus n n = 0.
1 subgoal
  
  ============================
   forall n : nat, minus n n = 0

minus_diag < Proof.
1 subgoal
  
  ============================
   forall n : nat, minus n n = 0

minus_diag < intros n.
1 subgoal
  
  n : nat
  ============================
   minus n n = 0

minus_diag < induction n as [| n' IHn'].
2 subgoals
  
  ============================
   minus 0 0 = 0

subgoal 2 is:
 minus (S n') (S n') = 0

minus_diag < simpl.
2 subgoals
  
  ============================
   0 = 0

subgoal 2 is:
 minus (S n') (S n') = 0

minus_diag < reflexivity.
1 subgoal
  
  n' : nat
  IHn' : minus n' n' = 0
  ============================
   minus (S n') (S n') = 0

minus_diag < simpl.
1 subgoal
  
  n' : nat
  IHn' : minus n' n' = 0
  ============================
   minus n' n' = 0

minus_diag < rewrite -> IHn'.
1 subgoal
  
  n' : nat
  IHn' : minus n' n' = 0
  ============================
   0 = 0

minus_diag < reflexivity.
No more subgoals.

minus_diag < Qed.
intros n.
induction n as [| n' IHn'].
 simpl.
 reflexivity.

 simpl.
 rewrite IHn'.
 reflexivity.

minus_diag is defined

Coq < 
