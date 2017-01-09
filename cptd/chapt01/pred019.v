Coq < Section Predicate019.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patterns.

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
