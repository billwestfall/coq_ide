Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Predicate043.

Coq <  Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patterns.

Coq < Goal forall (X : Type) (A B: X->Prop), ( exists x : X, A x /\ B x ) -> ( exists x : X, A x ).
1 subgoal
  
  ============================
   forall (X : Type) (A B : X -> Prop),
   (exists x : X, A x /\ B x) -> exists x : X, A x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  A : X -> Prop
  B : X -> Prop
  x : X
  H0 : A x
  H1 : B x
  ============================
   exists x0 : X, A x0

Unnamed_thm < 
