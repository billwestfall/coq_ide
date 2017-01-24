Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Module Playground2.
Interactive Module Playground2 started

Coq < Require Import Arith Classical.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked

Coq < Fixpoint plus (n : nat) (m : nat) : nat := match n with | O => m | S n' => S (plus n' m) end.
plus is defined
plus is recursively defined (decreasing on 1st argument)

Coq < Fixpoint mult (n m : nat) : nat := match n with | O => O | S n' => plus m (mult n' m) end.
mult is defined
mult is recursively defined (decreasing on 1st argument)

Coq < Fixpoint minus (n m:nat) : nat := match n, m with | O , _ => O | S _ , O => n | S n', S m' => minus n' m' end.
minus is defined
minus is recursively defined (decreasing on 1st argument)

Coq < End Playground2.
Module Playground2 is defined

Coq < Fixpoint exp (base power : nat) : nat := match power with | O => S O | S p => mult base (exp base p) end.
exp is defined
exp is recursively defined (decreasing on 2nd argument)

Coq < Compute (exp 2 3).
     = 8
     : nat

Coq < Example exp_test1: (exp 3 3) = 27.
1 subgoal
  
  ============================
  exp 3 3 = 27

exp_test1 < Proof.
1 subgoal
  
  ============================
  exp 3 3 = 27

exp_test1 < simpl.
1 subgoal
  
  ============================
  27 = 27

exp_test1 < reflexivity.
No more subgoals.

exp_test1 < Qed.
Proof.
simpl.
reflexivity.

Qed.
exp_test1 is defined
