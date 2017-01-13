Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Predicate044.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patters.

Coq < Goal forall (X : Type) (A B: X->Prop), ( forall x : X, A x /\ B x ) -> ( forall x : X, A x ).
1 subgoal
  
  ============================
   forall (X : Type) (A B : X -> Prop),
   (forall x : X, A x /\ B x) -> forall x : X, A x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  A : X -> Prop
  B : X -> Prop
  H : forall x : X, A x /\ B x
  x : X
  ============================
   A x
