Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate020.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Patters.

Coq < Set Asymmetric Patterns.

Coq < Goal forall (W : Type) (B : W->Prop), (exists w : W, B w -> ~B w).
1 subgoal
  
  ============================
   forall (W : Type) (B : W -> Prop), exists w : W, B w -> ~ B w

Unnamed_thm < crush.
1 subgoal
  
  W : Type
  B : W -> Prop
  ============================
   exists w : W, B w -> B w -> False
