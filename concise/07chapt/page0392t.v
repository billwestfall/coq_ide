(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_21.

Coq < Goal forall r d f g s:Prop, (((~r \/ d) -> ~(f /\ g)) /\ ((f /\ r) -> s) /\ (f /\ ~s)) -> ~(s \/ g).
1 subgoal

  ============================
   forall r d f g s : Prop,
   (~ r \/ d -> ~ (f /\ g)) /\ (f /\ r -> s) /\ f /\ ~ s -> ~ (s \/ g)

Unnamed_thm < intros.
1 subgoal

  r : Prop
  d : Prop
  f : Prop
  g : Prop
  s : Prop
  H : (~ r \/ d -> ~ (f /\ g)) /\ (f /\ r -> s) /\ f /\ ~ s
  ============================
   ~ (s \/ g)

Unnamed_thm < elim H.
1 subgoal

  r : Prop
  d : Prop
  f : Prop
  g : Prop
  s : Prop
  H : (~ r \/ d -> ~ (f /\ g)) /\ (f /\ r -> s) /\ f /\ ~ s
  ============================
   (~ r \/ d -> ~ (f /\ g)) -> (f /\ r -> s) /\ f /\ ~ s -> ~ (s \/ g)

Unnamed_thm < intro.
1 subgoal

  r : Prop
  d : Prop
  f : Prop
  g : Prop
  s : Prop
  H : (~ r \/ d -> ~ (f /\ g)) /\ (f /\ r -> s) /\ f /\ ~ s
  H0 : ~ r \/ d -> ~ (f /\ g)
  ============================
   (f /\ r -> s) /\ f /\ ~ s -> ~ (s \/ g)

Unnamed_thm < intro.
1 subgoal

  r : Prop
  d : Prop
  f : Prop
  g : Prop
  s : Prop
  H : (~ r \/ d -> ~ (f /\ g)) /\ (f /\ r -> s) /\ f /\ ~ s
  H0 : ~ r \/ d -> ~ (f /\ g)
  H1 : (f /\ r -> s) /\ f /\ ~ s
  ============================
   ~ (s \/ g)

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_21.
Goal forall r d f g s:Prop, (((~r \/ d) -> ~(f /\ g)) /\ ((f /\ r) -> s) /\ (f /\ ~s)) -> ~(s \/ g).
intros.
elim H.
intro.
intro.
 firstorder .
 Qed.
