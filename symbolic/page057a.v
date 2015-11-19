(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Cats.

Coq < Variables c f k:Prop.
c is assumed
f is assumed
k is assumed

Coq < Goal ((c -> f) /\ (k -> c)) -> (k -> f).
1 subgoal

  c : Prop
  f : Prop
  k : Prop
  ============================
   (c -> f) /\ (k -> c) -> k -> f

Unnamed_thm < intros.
1 subgoal

  c : Prop
  f : Prop
  k : Prop
  H : (c -> f) /\ (k -> c)
  H0 : k
  ============================
   f

Unnamed_thm < elim H.
1 subgoal

  c : Prop
  f : Prop
  k : Prop
  H : (c -> f) /\ (k -> c)
  H0 : k
  ============================
   (c -> f) -> (k -> c) -> f

Unnamed_thm < info_auto.
(* info auto : *)
 intro.
 intro.
 apply H1.
  apply H2.
   assumption.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
info_auto.

Unnamed_thm is defined

*)

Section Cats.
Variables c f k:Prop.
Goal ((c -> f) /\ (k -> c)) -> (k -> f).
intros.
elim H.
info_auto.
Qed.
