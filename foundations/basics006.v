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

Coq < Example test_mult1: (mult 3 3) = 9.
1 subgoal
  
  ============================
  mult 3 3 = 9

test_mult1 < Proof.
1 subgoal
  
  ============================
  mult 3 3 = 9

test_mult1 < simpl.
1 subgoal
  
  ============================
  9 = 9

test_mult1 < reflexivity.
No more subgoals.

test_mult1 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_mult1 is defined

Coq < Fixpoint minus (n m:nat) : nat := match n, m with | O , _ => O | S _ , O => n | S n', S m' => minus n' m' end.
minus is defined
minus is recursively defined (decreasing on 1st argument)

Coq < Compute (minus 8 6).
     = 2
     : nat

Coq < Example test_minus1: (minus 7 3) = 4.
1 subgoal
  
  ============================
  minus 7 3 = 4

test_minus1 < Proof.
1 subgoal
  
  ============================
  minus 7 3 = 4

test_minus1 < simpl.
1 subgoal
  
  ============================
  4 = 4

test_minus1 < reflexivity.
No more subgoals.

test_minus1 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_minus1 is defined

Coq < End Playground2.
Module Playground2 is defined
