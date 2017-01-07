Coq < Section Predicate009.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal exists (X : Type) (G : X->Prop), (exists x : X, G x ) -> (exists x : X, G x).
1 subgoal
  
  ============================
   exists (X : Type) (G : X -> Prop),
     (exists x : X, G x) -> exists x : X, G x

Unnamed_thm < crush.
1 subgoal
  
  ============================
   exists (X : Type) (G : X -> Prop),
     (exists x : X, G x) -> exists x : X, G x
