Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate027.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (X : Type) (G H : X->Prop), (exists x : X, exists y : X, G x /\ H y) /\ (exists! z : X, (G z /\ H z)).
1 subgoal
  
  ============================
   forall (X : Type) (G H : X -> Prop),
   (exists x y : X, G x /\ H y) /\ (exists ! z : X, G z /\ H z)

Unnamed_thm < crush.
2 subgoals
  
  X : Type
  G : X -> Prop
  H : X -> Prop
  ============================
   exists x y : X, G x /\ H y

subgoal 2 is:
 exists ! z : X, G z /\ H z

Unnamed_thm < 
