Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Math015.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x, x * 3 = x + x + x.
1 subgoal
  
  ============================
   forall x : nat, x * 3 = x + x + x

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined

Coq < 
