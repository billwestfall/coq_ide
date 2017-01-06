Coq < Section Predicate001.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (F G : X->Prop), (forall x : X, F x -> G x) -> (forall x : X, G  x).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (forall x : X, F x -> G x) -> forall x : X, G x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  F : X -> Prop
  G : X -> Prop
  H : forall x : X, F x -> G x
  x : X
  ============================
   G x
