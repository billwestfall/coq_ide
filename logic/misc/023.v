C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Variable f : nat -> nat.
Toplevel input, characters 0-24:
> Variable f : nat -> nat.
> ^^^^^^^^^^^^^^^^^^^^^^^^
Warning: f is declared as a local axiom [local-declaration,scope]
f is declared

Coq < Hypothesis foo : f 0 = 0.
Toplevel input, characters 0-25:
> Hypothesis foo : f 0 = 0.
> ^^^^^^^^^^^^^^^^^^^^^^^^^
Warning: foo is declared as a local axiom [local-declaration,scope]
foo is declared

Coq < Theorem L1 : forall k:nat, k = 0 -> f k = k.
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
L1 is defined
