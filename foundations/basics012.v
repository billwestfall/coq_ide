Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Theorem plus_n_O : forall n, n = n + 0.
1 subgoal
  
  ============================
  forall n : nat, n = n + 0

plus_n_O < Proof.
1 subgoal
  
  ============================
  forall n : nat, n = n + 0

plus_n_O < intros n.
1 subgoal
  
  n : nat
  ============================
  n = n + 0

plus_n_O < simpl.
1 subgoal
  
  n : nat
  ============================
  n = n + 0

plus_n_O < info_auto.
Debug: (* info auto : *)
Debug:  apply plus_n_O.
No more subgoals.

plus_n_O < Qed.
Proof.
intros n.
simpl.
info_auto.

Qed.
plus_n_O is defined
