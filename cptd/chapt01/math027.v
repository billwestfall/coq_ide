Welcome to Coq 8.6 (January 2017)

Coq < Section Math027.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x y, (x - y) * (x + y) = (x * x) - (y * y).
1 subgoal
  
  ============================
  forall x y : nat, (x - y) * (x + y) = x * x - y * y

Unnamed_thm < crush.
1 subgoal
  
  x, y : nat
  ============================
  (x - y) * (x + y) = x * x - y * y

Unnamed_thm < 
