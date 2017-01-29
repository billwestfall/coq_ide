Welcome to Coq 8.4pl4 (November 2015)

Coq < Theorem mult_0_plus' : forall n m : nat, (0 + n) * m = n * m.
1 subgoal
  
  ============================
   forall n m : nat, (0 + n) * m = n * m

mult_0_plus' < Proof.
1 subgoal
  
  ============================
   forall n m : nat, (0 + n) * m = n * m

mult_0_plus' < info_auto.
(* info auto : *)
 intro.
 intro.
 apply @eq_refl.
No more subgoals.

mult_0_plus' < Qed.
info_auto.

mult_0_plus' is defined
