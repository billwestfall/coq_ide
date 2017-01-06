Coq < Section Predicate003.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal exists (X : Type) (F G : X->Prop), (exists x : X, F x \/ G x) -> (exists x : X, F x -> ~G x).
1 subgoal
  
  ============================
   exists (X : Type) (F G : X -> Prop),
     (exists x : X, F x \/ G x) -> exists x : X, F x -> ~ G x

Unnamed_thm < crush.
1 subgoal
  
  ============================
   exists (X : Type) (F G : X -> Prop),
     (exists x : X, F x \/ G x) -> exists x : X, F x -> G x -> False
