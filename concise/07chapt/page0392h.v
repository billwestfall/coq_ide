(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_8.

Coq < Goal forall j k b s:Prop, (~(j \/ k) /\ (b -> k) /\ (s -> b)) -> (~s /\ ~j).
1 subgoal

  ============================
   forall j k b s : Prop, ~ (j \/ k) /\ (b -> k) /\ (s -> b) -> ~ s /\ ~ j

Unnamed_thm < intros.
1 subgoal

  j : Prop
  k : Prop
  b : Prop
  s : Prop
  H : ~ (j \/ k) /\ (b -> k) /\ (s -> b)
  ============================
   ~ s /\ ~ j

Unnamed_thm < elim H.
1 subgoal

  j : Prop
  k : Prop
  b : Prop
  s : Prop
  H : ~ (j \/ k) /\ (b -> k) /\ (s -> b)
  ============================
   ~ (j \/ k) -> (b -> k) /\ (s -> b) -> ~ s /\ ~ j

Unnamed_thm < intro.
1 subgoal

  j : Prop
  k : Prop
  b : Prop
  s : Prop
  H : ~ (j \/ k) /\ (b -> k) /\ (s -> b)
  H0 : ~ (j \/ k)
  ============================
   (b -> k) /\ (s -> b) -> ~ s /\ ~ j

Unnamed_thm < intro.
1 subgoal

  j : Prop
  k : Prop
  b : Prop
  s : Prop
  H : ~ (j \/ k) /\ (b -> k) /\ (s -> b)
  H0 : ~ (j \/ k)
  H1 : (b -> k) /\ (s -> b)
  ============================
   ~ s /\ ~ j

Unnamed_thm < apply conj.
2 subgoals

  j : Prop
  k : Prop
  b : Prop
  s : Prop
  H : ~ (j \/ k) /\ (b -> k) /\ (s -> b)
  H0 : ~ (j \/ k)
  H1 : (b -> k) /\ (s -> b)
  ============================
   ~ s

subgoal 2 is:
 ~ j

Unnamed_thm < firstorder.
1 subgoal

  j : Prop
  k : Prop
  b : Prop
  s : Prop
  H : ~ (j \/ k) /\ (b -> k) /\ (s -> b)
  H0 : ~ (j \/ k)
  H1 : (b -> k) /\ (s -> b)
  ============================
   ~ j

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply conj.
 firstorder .

 firstorder .

Unnamed_thm is defined

Coq <
*)

Require Import Classical.
Section Exercise_8.
Goal forall j k b s:Prop, (~(j \/ k) /\ (b -> k) /\ (s -> b)) -> (~s /\ ~j).
intros.
elim H.
intro.
intro.
apply conj.
 firstorder.
 firstorder.
Qed.
