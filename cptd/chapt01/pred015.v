Coq < Section Predicate015.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (F G : X->Prop), (forall x : X, F x) \/ (forall x : X, G x) -> (forall x : X, F x \/ G x).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (forall x : X, F x) \/ (forall x : X, G x) -> forall x : X, F x \/ G x

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
