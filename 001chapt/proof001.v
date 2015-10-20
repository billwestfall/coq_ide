MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Check 0.
0
     : nat

Coq < Check nat.
nat
     : Set

Coq < Section Declaration.

Coq < Variable n : nat.
n is assumed

Coq < Hypothesis Pos_n : (gt n 0).
Pos_n is assumed

Coq < Check gt.
gt
     : nat -> nat -> Prop

Coq < Check (nat -> Prop).
nat -> Prop
     : Type

Coq < Check gt n 0.
n > 0
     : Prop

Coq < Definition one := (S 0).
one is defined

Coq < Definition two : nat := S one.
two is defined

Coq < Definition three : nat := S two.
three is defined

Coq < Definition double (m:nat) := plus m n.
double is defined

Coq < Definition add_n (m:nat) := plus m n.
add_n is defined

Coq < Check (forall m:nat, gt m 0).
forall m : nat, m > 0
     : Prop

Coq < Reset Declaration.

Coq < Section Minimal_Logic.

Coq < Variables A B C : Prop.
A is assumed
B is assumed
C is assumed

Coq < Check (A -> B).
A -> B
     : Prop

Coq < Goal (A -> B -> C) -> (A -> B) -> A -> C.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  ============================
   (A -> B -> C) -> (A -> B) -> A -> C

Unnamed_thm < intro H.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  ============================
   (A -> B) -> A -> C

Unnamed_thm < intros H' HA.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H' : A -> B
  HA : A
  ============================
   C

Unnamed_thm < apply H.
2 subgoals

  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H' : A -> B
  HA : A
  ============================
   A

subgoal 2 is:
 B

Unnamed_thm < exact HA.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H' : A -> B
  HA : A
  ============================
   B

Unnamed_thm < apply H'.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H' : A -> B
  HA : A
  ============================
   A

Unnamed_thm < assumption.
No more subgoals.

Unnamed_thm < Save trivial_lemma.
intro H.
intros H' HA.
apply H.
 exact HA.

 apply H'.
 assumption.

trivial_lemma is defined
