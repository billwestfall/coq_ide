Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Section Basics001.

Coq < Require Import Arith Classical.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked

Coq < Inductive bool : Type := | true : bool | false : bool.
bool is defined
bool_rect is defined
bool_ind is defined
bool_rec is defined

Coq < Definition orb (b1:bool) (b2:bool) : bool := match b1 with | true => true | false => b2 end.
orb is defined

Coq < Example test_orb1: (orb true false) = true.
1 subgoal
  
  ============================
  orb true false = true

test_orb1 < Proof.
1 subgoal
  
  ============================
  orb true false = true

test_orb1 < simpl.
1 subgoal
  
  ============================
  true = true

test_orb1 < reflexivity.
No more subgoals.

test_orb1 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_orb1 is defined

Coq < Example test_orb2: (orb false false) = false.
1 subgoal
  
  ============================
  orb false false = false

test_orb2 < Proof.
1 subgoal
  
  ============================
  orb false false = false

test_orb2 < simpl.
1 subgoal
  
  ============================
  false = false

test_orb2 < reflexivity.
No more subgoals.

test_orb2 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_orb2 is defined

Coq < Example test_orb3: (orb false true) = true.
1 subgoal
  
  ============================
  orb false true = true

test_orb3 < Proof.
1 subgoal
  
  ============================
  orb false true = true

test_orb3 < simpl.
1 subgoal
  
  ============================
  true = true

test_orb3 < reflexivity.
No more subgoals.

test_orb3 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_orb3 is defined

Coq < Example test_orb4: (orb true true) = true.
1 subgoal
  
  ============================
  orb true true = true

test_orb4 < Proof.
1 subgoal
  
  ============================
  orb true true = true

test_orb4 < simpl.
1 subgoal
  
  ============================
  true = true

test_orb4 < reflexivity.
No more subgoals.

test_orb4 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_orb4 is defined

Coq < Infix "&&" := andb.

Coq < Infix "||" := orb.

Coq < Example test_orb5: false || false || true = true.
1 subgoal
  
  ============================
  false || false || true = true

test_orb5 < Proof.
1 subgoal
  
  ============================
  false || false || true = true

test_orb5 < simpl.
1 subgoal
  
  ============================
  true = true

test_orb5 < reflexivity.
No more subgoals.

test_orb5 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_orb5 is defined

Coq < ^D
MacBook-Air:sf billw$ 
