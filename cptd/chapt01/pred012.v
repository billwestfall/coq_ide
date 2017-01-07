Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate012.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall (X : Type) (G : X->Prop), (exists x : X, G x ) -> (exists x : X, G x).
1 subgoal
  
  ============================
   forall (X : Type) (G : X -> Prop),
   (exists x : X, G x) -> exists x : X, G x

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
