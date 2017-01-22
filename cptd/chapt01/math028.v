Welcome to Coq 8.6 (January 2017)

Coq < Section Math028.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x, (x - 2) * (x + 2) = (x * x) - (2 * 2).
1 subgoal
  
  ============================
  forall x : nat, (x - 2) * (x + 2) = x * x - 2 * 2

Unnamed_thm < crush.
1 subgoal
  
  x : nat
  ============================
  (x - 2) * (x + 2) = x * x - 4

Unnamed_thm < 
