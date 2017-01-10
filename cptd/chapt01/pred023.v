Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate023.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (X : Type) (F G : X->Prop), (forall x : X,  F x) -> (exists y : X, G y) /\ (exists! x : X, G x) /\ (exists! x : X, ~F x).
1 subgoal
  
  ============================
   forall (X : Type) (F G : X -> Prop),
   (forall x : X, F x) ->
   (exists y : X, G y) /\ (exists ! x : X, G x) /\ (exists ! x : X, ~ F x)

Unnamed_thm < crush.
3 subgoals
  
  X : Type
  F : X -> Prop
  G : X -> Prop
  H : forall x : X, F x
  ============================
   exists y : X, G y

subgoal 2 is:
 exists ! x : X, G x
subgoal 3 is:
 exists ! x : X, F x -> False

Unnamed_thm < 
