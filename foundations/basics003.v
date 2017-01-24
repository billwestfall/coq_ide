Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Module Playground1.
Interactive Module Playground1 started

Coq < Require Import Arith Classical.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked

Coq < Fixpoint evenb (n:nat) : bool := match n with | O => true | S O => false | S (S n') => evenb n' end.
evenb is defined
evenb is recursively defined (decreasing on 1st argument)

Coq < Definition oddb (n:nat) : bool := negb (evenb n).
oddb is defined

Coq < Example test_oddb2: oddb 4 = false.
1 subgoal
  
  ============================
  oddb 4 = false

test_oddb2 < Proof.
1 subgoal
  
  ============================
  oddb 4 = false

test_oddb2 < simpl.
1 subgoal
  
  ============================
  oddb 4 = false

test_oddb2 < reflexivity.
No more subgoals.

test_oddb2 < Qed.
Proof.
simpl.
reflexivity.

Qed.
test_oddb2 is defined
