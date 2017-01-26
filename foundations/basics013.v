Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Theorem plus_id_example : forall n m:nat, n = m -> n + n = m + m.
1 subgoal
  
  ============================
  forall n m : nat, n = m -> n + n = m + m

plus_id_example < Proof.
1 subgoal
  
  ============================
  forall n m : nat, n = m -> n + n = m + m

plus_id_example < intros n m.
1 subgoal
  
  n, m : nat
  ============================
  n = m -> n + n = m + m

plus_id_example < intros H.
1 subgoal
  
  n, m : nat
  H : n = m
  ============================
  n + n = m + m

plus_id_example < rewrite -> H.
1 subgoal
  
  n, m : nat
  H : n = m
  ============================
  m + m = m + m

plus_id_example < reflexivity.
No more subgoals.

plus_id_example < Qed.
Proof.
intros n m.
intros H.
rewrite H.
reflexivity.

Qed.
plus_id_example is defined
