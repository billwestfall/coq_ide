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

Coq < Notation "x + y" := (plus x y) (at level 50 , left associativity) : nat_scope.

Coq < Notation "x - y" := (minus x y) (at level 50, left associativity) : nat_scope.

Coq < Check ((0 + 1) + 1).
0 + 1 + 1
     : nat

Coq < Compute 1 + 2.
     = 3
     : nat

Coq < Compute 4 - 1.
     = 3
     : nat

Coq < Compute 4 * 2.
     = 8
     : nat

Coq < Fixpoint beq_nat (n m : nat) : bool := match n with | O => match m with | O => true | S m' => false end | S n' => match m with | O => false | S m' => beq_nat n' m' end end.
beq_nat is defined
beq_nat is recursively defined (decreasing on 1st argument)

Coq < Fixpoint leb (n m : nat) : bool := match n with | O => true | S n' => match m with | O => false | S m' => leb n' m' end end.
leb is defined
leb is recursively defined (decreasing on 1st argument)

Coq < Example test_leb1: (leb 2 2) = true.
1 subgoal
  
  ============================
  leb 2 2 = true

test_leb1 < Proof.
1 subgoal
  
  ============================
  leb 2 2 = true

test_leb1 < simpl.
1 subgoal
  
  ============================
  true = true

test_leb1 < reflexivity.
No more subgoals.

test_leb1 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_leb1 is defined

Coq < Example test_leb2: (leb 2 4) = true.
1 subgoal
  
  ============================
  leb 2 4 = true

test_leb2 < Proof.
1 subgoal
  
  ============================
  leb 2 4 = true

test_leb2 < simpl.
1 subgoal
  
  ============================
  true = true

test_leb2 < reflexivity.
No more subgoals.

test_leb2 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_leb2 is defined

Coq < Example test_leb3: (leb 4 2) = false.
1 subgoal
  
  ============================
  leb 4 2 = false

test_leb3 < Proof.
1 subgoal
  
  ============================
  leb 4 2 = false

test_leb3 < simpl.
1 subgoal
  
  ============================
  false = false

test_leb3 < reflexivity.
No more subgoals.

test_leb3 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_leb3 is defined
