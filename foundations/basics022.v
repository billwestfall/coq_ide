Welcome to Coq 8.4pl4 (November 2015)

Coq < Theorem mult_0_r : forall n : nat, n * 0 = 0.
1 subgoal
  
  ============================
   forall n : nat, n * 0 = 0

mult_0_r < Proof.
1 subgoal
  
  ============================
   forall n : nat, n * 0 = 0

mult_0_r < simpl.
1 subgoal
  
  ============================
   forall n : nat, n * 0 = 0

mult_0_r < intros.
1 subgoal
  
  n : nat
  ============================
   n * 0 = 0

mult_0_r < info_auto.
(* info auto : *)
 apply eq_sym ; trivial.
No more subgoals.

mult_0_r < Qed.
simpl.
intros.
info_auto.

mult_0_r is defined
