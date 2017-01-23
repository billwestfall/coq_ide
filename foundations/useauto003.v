Welcome to Coq ciosx:/builds/workspace/coq-8.5pl3-macos,(detached from 2290dbb) (2290dbb9c95b63e693ced647731623e64297f5c8)

Coq < Section UseAuto003.

Coq < Require Import Arith Classical.
[Loading ML file z_syntax_plugin.cmxs ... done]
[Loading ML file quote_plugin.cmxs ... done]
[Loading ML file newring_plugin.cmxs ... done]
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked
<W> Grammar extension: in [tactic:simple_tactic], some rule has been masked

Coq < Goal forall (P Q : nat->Prop), (forall n, Q n -> P n) -> (forall n, Q n) -> P 2.
1 subgoal
  
  ============================
  forall P Q : nat -> Prop,
  (forall n : nat, Q n -> P n) -> (forall n : nat, Q n) -> P 2

Unnamed_thm < info_auto.
Debug: (* info auto : *)
Debug:  intro.
 intro.
 intro.
 intro.
 apply H.
  apply H0.
No more subgoals.

Unnamed_thm < Qed.
info_auto.

Qed.
Unnamed_thm is defined

Coq < 
