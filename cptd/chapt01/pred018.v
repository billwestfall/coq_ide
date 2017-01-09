Coq < Section Predicate018.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (H J : X->Prop), (exists x : X, H x) \/ (forall x : X, H x -> J x).
1 subgoal
  
  ============================
   forall (X : Type) (H J : X -> Prop),
   (exists x : X, H x) \/ (forall x : X, H x -> J x)

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  H : X -> Prop
  J : X -> Prop
  ============================
   (exists x : X, H x) \/ (forall x : X, H x -> J x)

Unnamed_thm < 
