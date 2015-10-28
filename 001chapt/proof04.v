MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Check NNPP.
NNPP
     : forall p : Prop, ~ ~ p -> p

Coq < Variables A B C : Prop.
A is assumed
Warning: A is declared as a parameter because it is at a global level
B is assumed
Warning: B is declared as a parameter because it is at a global level
C is assumed
Warning: C is declared as a parameter because it is at a global level

Coq < Check (A -> B).
A -> B
     : Prop

Coq < Lemma Peirce : ((A -> B) -> A) -> A.
1 subgoal
  
  ============================
   ((A -> B) -> A) -> A

Peirce < apply NNPP; tauto.
No more subgoals.

Peirce < Qed.
apply NNPP; tauto.

Peirce is defined

Coq < 
