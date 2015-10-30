MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Variable f : nat -> nat.
f is assumed
Warning: f is declared as a parameter because it is at a global level

Coq < Hypothesis foo : f 0 = 0.
foo is assumed
Warning: foo is declared as a parameter because it is at a global level

Coq < Lemma L1 : forall k:nat, k = 0 -> f k = k.
1 subgoal
  
  ============================
   forall k : nat, k = 0 -> f k = k

L1 < intros k E.
1 subgoal
  
  k : nat
  E : k = 0
  ============================
   f k = k

L1 < rewrite E.
1 subgoal
  
  k : nat
  E : k = 0
  ============================
   f 0 = 0

L1 < apply foo.
No more subgoals.

L1 < Qed.
intros k E.
rewrite E.
apply foo.

L1 is defined

Coq < 
