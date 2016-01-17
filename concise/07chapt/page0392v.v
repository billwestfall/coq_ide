(*
MacBook-Air:htdocs billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_23.

Coq < Goal forall a g e f:Prop, (~(a /\ g) /\ ~(a /\ e) /\ (g \/ e)) -> ~(a /\ f).
1 subgoal

  ============================
   forall a g e f : Prop, ~ (a /\ g) /\ ~ (a /\ e) /\ (g \/ e) -> ~ (a /\ f)

Unnamed_thm < intros.
1 subgoal

  a : Prop
  g : Prop
  e : Prop
  f : Prop
  H : ~ (a /\ g) /\ ~ (a /\ e) /\ (g \/ e)
  ============================
   ~ (a /\ f)

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  g : Prop
  e : Prop
  f : Prop
  H : ~ (a /\ g) /\ ~ (a /\ e) /\ (g \/ e)
  ============================
   ~ (a /\ g) -> ~ (a /\ e) /\ (g \/ e) -> ~ (a /\ f)

Unnamed_thm < intro.
1 subgoal

  a : Prop
  g : Prop
  e : Prop
  f : Prop
  H : ~ (a /\ g) /\ ~ (a /\ e) /\ (g \/ e)
  H0 : ~ (a /\ g)
  ============================
   ~ (a /\ e) /\ (g \/ e) -> ~ (a /\ f)

Unnamed_thm < intro.
1 subgoal

  a : Prop
  g : Prop
  e : Prop
  f : Prop
  H : ~ (a /\ g) /\ ~ (a /\ e) /\ (g \/ e)
  H0 : ~ (a /\ g)
  H1 : ~ (a /\ e) /\ (g \/ e)
  ============================
   ~ (a /\ f)

Unnamed_thm < intro.
1 subgoal

  a : Prop
  g : Prop
  e : Prop
  f : Prop
  H : ~ (a /\ g) /\ ~ (a /\ e) /\ (g \/ e)
  H0 : ~ (a /\ g)
  H1 : ~ (a /\ e) /\ (g \/ e)
  H2 : a /\ f
  ============================
   False

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_23.
Goal forall a g e f:Prop, (~(a /\ g) /\ ~(a /\ e) /\ (g \/ e)) -> ~(a /\ f).
intros.
elim H.
intro.
intro.
intro.
 firstorder.
 Qed.
