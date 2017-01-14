Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Math004.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall w, w * 100 < w * 101.
1 subgoal
  
  ============================
   forall w : nat, w * 100 < w * 101

Unnamed_thm < crush.
1 subgoal
  
  w : nat
  ============================
   w * 100 < w * 101

Unnamed_thm < 
