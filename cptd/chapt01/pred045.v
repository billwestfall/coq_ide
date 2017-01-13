Coq < Section Predicate045.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patterns.

Coq < Goal exists (X : Type) (A B: X->Prop), ( exists x : X, A x /\ B x ) -> ( exists x : X, A x ).
1 subgoal
  
  ============================
   exists (X : Type) (A B : X -> Prop),
     (exists x : X, A x /\ B x) -> exists x : X, A x

Unnamed_thm < crush.
1 subgoal
  
  ============================
   exists (X : Type) (A B : X -> Prop),
     (exists x : X, A x /\ B x) -> exists x : X, A x
