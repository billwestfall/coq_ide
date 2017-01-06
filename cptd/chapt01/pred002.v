Coq < Section Predicate002.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (G : X->Prop), (forall x : X, G x) -> (forall x : X, G x).
1 subgoal
  
  ============================
   forall (X : Type) (G : X -> Prop),
   (forall x : X, G x) -> forall x : X, G x

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
