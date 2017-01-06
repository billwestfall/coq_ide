Coq < Section Pred004.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal exists (X : Type) (F : X ->Prop),(exists y : X, F y) -> (exists x : X, F x).
1 subgoal
  
  ============================
   exists (X : Type) (F : X -> Prop),
     (exists y : X, F y) -> exists x : X, F x

Unnamed_thm < 
