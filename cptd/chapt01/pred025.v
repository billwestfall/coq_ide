Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Predicate025.

Coq < Require Import Bool Arith List.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Set Implicit Arguments.

Coq < Set Asymmetric Arguments.

Coq < Goal forall (W : Type) (A B C : W->Prop), (forall w : W, A w -> B w) /\ (forall w : W, B w -> C w) /\ (exists y : W, A y /\ ~C y).
1 subgoal
  
  ============================
   forall (W : Type) (A B C : W -> Prop),
   (forall w : W, A w -> B w) /\
   (forall w : W, B w -> C w) /\ (exists y : W, A y /\ ~ C y)

Unnamed_thm < crush.
3 subgoals
  
  W : Type
  A : W -> Prop
  B : W -> Prop
  w : W
  H : A w
  X : Prop
  ============================
   B w

subgoal 2 is:
 C w
subgoal 3 is:
 exists y : W, A y /\ (C y -> False)

Unnamed_thm < 
