Coq < Section Predicate016.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (F G : X->Prop), (exists y : X, F y) \/ (forall x : X, forall y : X, F x -> G y).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (exists y : X, F y) \/ (forall x y : X, F x -> G y)

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  F : X -> Prop
  G : X -> Prop
  ============================
   (exists y : X, F y) \/ (forall x y : X, F x -> G y)

Unnamed_thm < 
