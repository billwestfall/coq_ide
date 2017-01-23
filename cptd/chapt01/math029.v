Welcome to Coq 8.6 (January 2017)

Coq < Section Math029.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall x, (x * 0) = 0.
1 subgoal
  
  ============================
  forall x : nat, x * 0 = 0

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Qed.
Unnamed_thm is defined

Coq < 
