Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate033.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (X : Type) (F G : X->Prop), (forall x : X, F x ) \/  (forall x : X, G x) = (forall x : X, F x \/ G x).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (forall x : X, F x) \/ (forall x : X, G x) = (forall x : X, F x \/ G x)

Unnamed_thm < crush.
1 subgoal
  
  X : Type
  F : X -> Prop
  G : X -> Prop
  ============================
   (forall x : X, F x) \/ (forall x : X, G x) = (forall x : X, F x \/ G x)

Unnamed_thm < 
