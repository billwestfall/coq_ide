Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Predicate047.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patterns.

Coq < Goal forall (X : Type) (A: X->Prop), ( forall x : X, A x ) -> ( forall x : X, A x ).
1 subgoal
  
  ============================
   forall (X : Type) (A : X -> Prop),
   (forall x : X, A x) -> forall x : X, A x

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined

Coq < 
