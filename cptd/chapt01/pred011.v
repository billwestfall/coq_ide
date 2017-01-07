Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate011.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal exists (X : Type) (G : X->Prop), (forall x : X, G x ) -> (forall x : X, G x).
1 subgoal
  
  ============================
   exists (X : Type) (G : X -> Prop),
     (forall x : X, G x) -> forall x : X, G x

Unnamed_thm < crush.
1 subgoal
  
  ============================
   exists (X : Type) (G : X -> Prop),
     (forall x : X, G x) -> forall x : X, G x

Unnamed_thm < 
