Welcome to Coq 8.4pl4 (August 2014)

Coq < Section Math007.

Coq < Require Import Arith.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]

Coq < Load CpdtTactics.

Coq < Goal forall z, z * 101 = z * 100.
1 subgoal
  
  ============================
   forall z : nat, z * 101 = z * 100

Unnamed_thm < crush.
1 subgoal
  
  z : nat
  ============================
   z * 101 = z * 100
