Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate14.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (G : X->Prop), (exists x : X, G x ) -> (forall x : X, G x).
1 subgoal
  
  ============================
   forall (X : Type) (G : X -> Prop),
   (exists x : X, G x) -> forall x : X, G x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  G : X -> Prop
  x0 : X
  H : G x0
  x : X
  ============================
   G x
