Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate013.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (G : X->Prop), (forall x : X, G x ) -> (exists x : X, G x).
1 subgoal
  
  ============================
   forall (X : Type) (G : X -> Prop),
   (forall x : X, G x) -> exists x : X, G x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  G : X -> Prop
  H : forall x : X, G x
  ============================
   exists x : X, G x

Unnamed_thm < 
