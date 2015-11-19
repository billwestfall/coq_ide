(*

MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Books.

Coq < Goal forall x y m:Prop, (~(x -> m) /\ ~(y -> ~m)) -> ~(x -> y).
1 subgoal

  ============================
   forall x y m : Prop, ~ (x -> m) /\ ~ (y -> ~ m) -> ~ (x -> y)

Unnamed_thm < intros.
1 subgoal

  x : Prop
  y : Prop
  m : Prop
  H : ~ (x -> m) /\ ~ (y -> ~ m)
  ============================
   ~ (x -> y)

Unnamed_thm < elim H.
1 subgoal

  x : Prop
  y : Prop
  m : Prop
  H : ~ (x -> m) /\ ~ (y -> ~ m)
  ============================
   ~ (x -> m) -> ~ (y -> ~ m) -> ~ (x -> y)

Unnamed_thm < info_auto.
(* info auto : *)
 intro.
 intro.
 unfold not.
  intro.
  apply H1.
   intro.
   unfold not.
    intro.
    apply H1.
     intro.
     unfold not.
     unfold not.
    apply H0.
     intro.
     assumption.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
info_auto.

Unnamed_thm is defined

Coq <

*)

Section Books.
Goal forall x y m:Prop, (~(x -> m) /\ ~(y -> ~m)) -> ~(x -> y).
intros.
elim H.
info_auto.
Qed.
