(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_02.

Coq < Goal forall f g:Prop, ((f -> g) /\ (f \/ g)) -> g.
1 subgoal

  ============================
   forall f g : Prop, (f -> g) /\ (f \/ g) -> g

Unnamed_thm < intros.
1 subgoal

  f : Prop
  g : Prop
  H : (f -> g) /\ (f \/ g)
  ============================
   g

Unnamed_thm < elim H.
1 subgoal

  f : Prop
  g : Prop
  H : (f -> g) /\ (f \/ g)
  ============================
   (f -> g) -> f \/ g -> g

Unnamed_thm < intro.
1 subgoal

  f : Prop
  g : Prop
  H : (f -> g) /\ (f \/ g)
  H0 : f -> g
  ============================
   f \/ g -> g

Unnamed_thm < intro.
1 subgoal

  f : Prop
  g : Prop
  H : (f -> g) /\ (f \/ g)
  H0 : f -> g
  H1 : f \/ g
  ============================
   g

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
tauto.

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_02.
Goal forall f g:Prop, ((f -> g) /\ (f \/ g)) -> g.
intros.
elim H.
intro.
intro.
 tauto.
 Qed.
