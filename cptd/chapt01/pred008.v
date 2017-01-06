Coq < Section Predicate008.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (G H : X->Prop), (forall x : X, G x ) -> (exists x : X, G x \/ H x).
1 subgoal
  
  ============================
   forall (X : Type) (G H : X -> Prop),
   (forall x : X, G x) -> exists x : X, G x \/ H x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  G : X -> Prop
  H : X -> Prop
  H0 : forall x : X, G x
  ============================
   exists x : X, G x \/ H x
