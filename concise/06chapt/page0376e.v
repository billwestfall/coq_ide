(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Goal forall c d k p:Prop, (c /\ d) -> ((c /\ d) \/ (k /\ ~p)).
1 subgoal

  ============================
   forall c d k p : Prop, c /\ d -> c /\ d \/ k /\ ~ p

Unnamed_thm < intros.
1 subgoal

  c : Prop
  d : Prop
  k : Prop
  p : Prop
  H : c /\ d
  ============================
   c /\ d \/ k /\ ~ p

Unnamed_thm < left.
1 subgoal

  c : Prop
  d : Prop
  k : Prop
  p : Prop
  H : c /\ d
============================
   c /\ d

Unnamed_thm < exact H.
No more subgoals.

Unnamed_thm < Qed.
intros.
left.
exact H.

Unnamed_thm is defined

Coq < MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Goal forall c d k p:Prop, (c /\ d) -> ((c /\ d) \/ (k /\ ~p)).
1 subgoal
  Coq < Coq < Coq < Toplevel input, characters 7-8:
> MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
>        ^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Coq < Coq <


*)

Section Addition_B.
Goal forall c d k p:Prop, (c /\ d) -> ((c /\ d) \/ (k /\ ~p)).
intros.
left.
exact H.
Qed.
