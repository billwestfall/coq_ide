Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Fixpoint beq_nat (n m : nat) : bool := match n with | O => match m with | O => true | S m' => false end | S n' => match m with | O => false | S m' => beq_nat n' m' end end.
beq_nat is defined
beq_nat is recursively defined (decreasing on 1st argument)

Coq < Theorem plus_1_neq_0_firsttry : forall n : nat, beq_nat (n + 1) 0 = false.
1 subgoal
  
  ============================
  forall n : nat, beq_nat (n + 1) 0 = false

plus_1_neq_0_firsttry < Proof.
1 subgoal
  
  ============================
  forall n : nat, beq_nat (n + 1) 0 = false

plus_1_neq_0_firsttry < info_auto.
Debug: (* info auto : *)
Debug: idtac.
1 subgoal
  
  ============================
  forall n : nat, beq_nat (n + 1) 0 = false

plus_1_neq_0_firsttry < intros n.
1 subgoal
  
  n : nat
  ============================
  beq_nat (n + 1) 0 = false

plus_1_neq_0_firsttry < simpl.
1 subgoal
  
  n : nat
  ============================
  beq_nat (n + 1) 0 = false

plus_1_neq_0_firsttry < destruct n as [| n'].
2 subgoals
  
  ============================
  beq_nat (0 + 1) 0 = false

subgoal 2 is:
 beq_nat (S n' + 1) 0 = false

plus_1_neq_0_firsttry < reflexivity.
1 subgoal
  
  n' : nat
  ============================
  beq_nat (S n' + 1) 0 = false

plus_1_neq_0_firsttry < reflexivity.
No more subgoals.

plus_1_neq_0_firsttry < Qed.
Proof.
info_auto.
intros n.
simpl.
destruct n as [| n'].
 reflexivity.

 reflexivity.

Qed.
plus_1_neq_0_firsttry is defined
