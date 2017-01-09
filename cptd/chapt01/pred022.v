Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate022.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (W : Type) (F G : W->Prop), (forall w : W, F w -> G w) /\ (forall w : W, F w -> ~G w) /\ (exists w : W, F w).
1 subgoal
  
  ============================
   forall (W : Type) (F G : W -> Prop),
   (forall w : W, F w -> G w) /\
   (forall w : W, F w -> ~ G w) /\ (exists w : W, F w)

Unnamed_thm < crush.
3 subgoals
  
  W : Type
  F : W -> Prop
  G : W -> Prop
  w : W
  H : F w
  ============================
   G w

subgoal 2 is:
 False
subgoal 3 is:
 exists w : W, F w
