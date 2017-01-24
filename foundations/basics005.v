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

Coq < Compute (plus 3 2).
     = 5
     : nat

Coq < Compute (plus 1 7).
     = 8
     : nat
