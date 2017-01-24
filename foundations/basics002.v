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

Coq < Example testoddb1: oddb 1 = true.
1 subgoal
  
  ============================
  oddb 1 = true

testoddb1 < Proof.
1 subgoal
  
  ============================
  oddb 1 = true

testoddb1 < simpl.
1 subgoal
  
  ============================
  oddb 1 = true

testoddb1 < reflexivity.
No more subgoals.

testoddb1 < Qed.
Proof.
simpl.
reflexivity.

Qed.
testoddb1 is defined
