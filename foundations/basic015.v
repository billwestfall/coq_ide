Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Theorem mult_0_plus : forall n m : nat, (0 + n) * m = n * m.
1 subgoal
  
  ============================
  forall n m : nat, (0 + n) * m = n * m

mult_0_plus < Proof.
1 subgoal
  
  ============================
  forall n m : nat, (0 + n) * m = n * m

mult_0_plus < info_auto.
Debug: (* info auto : *)
Debug:  intro.
 intro.
 apply @eq_refl.
No more subgoals.

mult_0_plus < Qed.
Proof.
info_auto.

Qed.
mult_0_plus is defined
