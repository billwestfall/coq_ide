Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Predicate036.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Require Implicit Arguments.
Error: Cannot find library Implicit in loadpath

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (X : Type) (F G : X->Prop), (exists x : X, exists a : X, F x -> G a) = (exists! x : X, exists a : X, F x -> G a).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (exists x a : X, F x -> G a) = (exists ! x : X, exists a : X, F x -> G a)

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  F : X -> Prop
  G : X -> Prop
  ============================
   (exists x a : X, F x -> G a) = (exists ! x : X, exists a : X, F x -> G a)

Unnamed_thm < 
