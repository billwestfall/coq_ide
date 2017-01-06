Coq < Section Predicate006.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal exists (X : Type) (G H : X->Prop), (exists x : X, G x /\ H x) -> (exists x : X, H x).
1 subgoal
  
  ============================
   exists (X : Type) (G H : X -> Prop),
     (exists x : X, G x /\ H x) -> exists x : X, H x

Unnamed_thm < crush.
1 subgoal
  
  ============================
   exists (X : Type) (G H : X -> Prop),
     (exists x : X, G x /\ H x) -> exists x : X, H x
