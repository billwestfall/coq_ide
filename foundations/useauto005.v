Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Section UseAuto005.

Coq < Require Import Arith Classical.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked

Coq < Goal forall(P : nat->Prop) (F : Prop), (forall n, P n) -> F -> F /\ P 2.
1 subgoal
  
  ============================
  forall (P : nat -> Prop) (F : Prop), (forall n : nat, P n) -> F -> F /\ P 2

Unnamed_thm < info_auto.
Debug: (* info auto : *)
Debug:  intro.
 intro.
 intro.
 intro.
 apply conj.
  assumption.
  apply H.
No more subgoals.

Unnamed_thm < Qed.
info_auto.

Qed.
Unnamed_thm is defined
