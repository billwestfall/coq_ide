Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Math024.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x, (4 * x) < (5 * x).
1 subgoal
  
  ============================
   forall x : nat, 4 * x < 5 * x

Unnamed_thm < crush.
1 subgoal
  
  x : nat
  ============================
   x + (x + (x + (x + 0))) < x + (x + (x + (x + (x + 0))))

Unnamed_thm < 
