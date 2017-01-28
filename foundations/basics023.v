Welcome to Coq 8.4pl4 (November 2015)

Coq < Theorem plus_n_Sm : forall n m : nat, S (n + m) = n + (S m).
1 subgoal
  
  ============================
   forall n m : nat, S (n + m) = n + S m

plus_n_Sm < Proof.
1 subgoal
  
  ============================
   forall n m : nat, S (n + m) = n + S m

plus_n_Sm < info_auto.
(* info auto : *)
 intro.
 intro.
 apply plus_n_Sm.
No more subgoals.

plus_n_Sm < Qed.
info_auto.

plus_n_Sm is defined
