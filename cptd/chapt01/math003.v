Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Math003.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall y, y + 1 > y.
1 subgoal
  
  ============================
   forall y : nat, y + 1 > y

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined

Coq < 
