MacBook-Air:bin billw$ ./coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section predicate_Calculus.

Coq < Variables P Q : nat -> Prop.
P is assumed
Q is assumed

Coq < Variable R : nat -> nat -> Prop.
R is assumed

Coq < Lemma PQR :
Coq < forall x y:nat, (R x x -> P x -> Q x) -> P x -> R x y -> Q x.
1 subgoal
  
  P : nat -> Prop
  Q : nat -> Prop
  R : nat -> nat -> Prop
  ============================
   forall x y : nat, (R x x -> P x -> Q x) -> P x -> R x y -> Q x

PQR < intros.
1 subgoal
  
  P : nat -> Prop
  Q : nat -> Prop
  R : nat -> nat -> Prop
  x : nat
  y : nat
  H : R x x -> P x -> Q x
  H0 : P x
  H1 : R x y
  ============================
   Q x

PQR < generalize H0.
1 subgoal
  
  P : nat -> Prop
  Q : nat -> Prop
  R : nat -> nat -> Prop
  x : nat
  y : nat
  H : R x x -> P x -> Q x
  H0 : P x
  H1 : R x y
  ============================
   P x -> Q x

PQR < cut (R x x); trivial.
1 subgoal
  
  P : nat -> Prop
  Q : nat -> Prop
  R : nat -> nat -> Prop
  x : nat
  y : nat
  H : R x x -> P x -> Q x
  H0 : P x
  H1 : R x y
  ============================
   R x x

PQR < Abort.
Current goal aborted

Coq < 
