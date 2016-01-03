(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Ten.

Coq < Require Import Classical.

Coq < Goal forall a b c:Prop, (a \/ b) -> c.
1 subgoal

  ============================
   forall a b c : Prop, a \/ b -> c

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : a \/ b
  ============================
   c

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < firstorder.
2 subgoals

  a : Prop
  b : Prop
  c : Prop
  H : a
  ============================
   c

subgoal 2 is:
 c

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm <
*)

Require Import Classical.
Section Practice_10.
Goal forall a b c:Prop, (a \/ b) -> c.
intros.
tauto.
firstorder.
tauto.
