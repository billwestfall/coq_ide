Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate042.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patterns.

Coq < Goal forall (X : Type) (P Q: X->Prop), ( forall x : X, Q x /\ P x ) -> ( exists x : X, P x ).
1 subgoal
  
  ============================
   forall (X : Type) (P Q : X -> Prop),
   (forall x : X, Q x /\ P x) -> exists x : X, P x

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  P : X -> Prop
  Q : X -> Prop
  H : forall x : X, Q x /\ P x
  ============================
   exists x : X, P x
