(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_25.

Coq < Goal forall t k c e:Prop, (((t /\ k) \/ (c /\ e)) /\ (k -> ~e) /\ (e -> ~c)) -> (t /\ k).
1 subgoal

  ============================
   forall t k c e : Prop,
   (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c) -> t /\ k

Unnamed_thm < intros.
1 subgoal

  t : Prop
  k : Prop
  c : Prop
  e : Prop
  H : (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c)
  ============================
   t /\ k

Unnamed_thm < elim H.
1 subgoal

  t : Prop
  k : Prop
  c : Prop
  e : Prop
  H : (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c)
  ============================
   t /\ k \/ c /\ e -> (k -> ~ e) /\ (e -> ~ c) -> t /\ k

Unnamed_thm < intro.
1 subgoal

  t : Prop
  k : Prop
  c : Prop
  e : Prop
  H : (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c)
  H0 : t /\ k \/ c /\ e
  ============================
   (k -> ~ e) /\ (e -> ~ c) -> t /\ k

Unnamed_thm < intro.
1 subgoal

  t : Prop
  k : Prop
  c : Prop
  e : Prop
  H : (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c)
  H0 : t /\ k \/ c /\ e
  H1 : (k -> ~ e) /\ (e -> ~ c)
  ============================
   t /\ k

Unnamed_thm < apply conj.
2 subgoals

  t : Prop
  k : Prop
  c : Prop
  e : Prop
  H : (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c)
  H0 : t /\ k \/ c /\ e
  H1 : (k -> ~ e) /\ (e -> ~ c)
  ============================
   t

subgoal 2 is:
 k

Unnamed_thm < tauto.
1 subgoal

  t : Prop
  k : Prop
  c : Prop
  e : Prop
  H : (t /\ k \/ c /\ e) /\ (k -> ~ e) /\ (e -> ~ c)
  H0 : t /\ k \/ c /\ e
  H1 : (k -> ~ e) /\ (e -> ~ c)
  ============================
   k

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply conj.
 tauto.

 firstorder .

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_25.
Goal forall t k c e:Prop, (((t /\ k) \/ (c /\ e)) /\ (k -> ~e) /\ (e -> ~c)) -> (t /\ k).
intros.
elim H.
intro.
intro.
apply conj.
 tauto.
 firstorder.
 Qed.
