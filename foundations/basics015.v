Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Theorem mult_S_1 : forall n m : nat, m = S n -> m * (1 + n) = m * m.
1 subgoal
  
  ============================
  forall n m : nat, m = S n -> m * (1 + n) = m * m

mult_S_1 < Proof.
1 subgoal
  
  ============================
  forall n m : nat, m = S n -> m * (1 + n) = m * m

mult_S_1 < info_auto.
Debug: (* info auto : *)
Debug:  intro.
 intro.
 intro.
 apply f_equal_nat.
  apply eq_sym ; trivial.
No more subgoals.

mult_S_1 < Qed.
Proof.
info_auto.

Qed.
mult_S_1 is defined
