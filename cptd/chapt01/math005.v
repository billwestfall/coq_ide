Coq < Section Math005.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall v, v - 101 < v - 100.
1 subgoal
  
  ============================
   forall v : nat, v - 101 < v - 100

Unnamed_thm < crush.
1 subgoal
  
  v : nat
  ============================
   v - 101 < v - 100

Unnamed_thm < 
