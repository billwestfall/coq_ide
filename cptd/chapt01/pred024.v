Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate024.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (X : Type) (F G : X->Prop), (exists x : X,  F x /\ ~G x) /\ (forall x : X, F x -> G x).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (exists x : X, F x /\ ~ G x) /\ (forall x : X, F x -> G x)

Unnamed_thm < crush.
2 subgoals
  
  X : Type
  F : X -> Prop
  G : X -> Prop
  ============================
   exists x : X, F x /\ (G x -> False)

subgoal 2 is:
 G x

Unnamed_thm < 
