Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Theorem plus_id_exercise : forall n m o : nat, n = m -> m = o -> n + m = m + o. 
1 subgoal
  
  ============================
  forall n m o : nat, n = m -> m = o -> n + m = m + o

plus_id_exercise < Proof.
1 subgoal
  
  ============================
  forall n m o : nat, n = m -> m = o -> n + m = m + o
  
plus_id_exercise < info_auto.
Debug: (* info auto : *)
Debug:
 intro.
 intro.
 intro.
 intro.
 intro.
 apply f_equal2_nat.
  assumption.
  assumption.
No more subgoals.

plus_id_exercise < Qed.
Proof.
info_auto.

Qed.
plus_id_exercise is defined

Coq < 
