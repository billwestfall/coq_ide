Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Math019.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x, (4 * x) = (4 * x) + 0.
1 subgoal
  
  ============================
   forall x : nat, 4 * x = 4 * x + 0

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
