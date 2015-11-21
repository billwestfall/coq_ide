(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Complex_MP.

Coq < Goal forall k b n r:Prop, (((k \/ b) -> (n /\ r)) /\ (k \/ b)) -> (n /\ r).
1 subgoal

  ============================
   forall k b n r : Prop, (k \/ b -> n /\ r) /\ (k \/ b) -> n /\ r

Unnamed_thm < intros.
1 subgoal

  k : Prop
  b : Prop
  n : Prop
  r : Prop
  H : (k \/ b -> n /\ r) /\ (k \/ b)
  ============================
   n /\ r

Unnamed_thm < elim H.
1 subgoal

  k : Prop
  b : Prop
  n : Prop
  r : Prop
  H : (k \/ b -> n /\ r) /\ (k \/ b)
  ============================
   (k \/ b -> n /\ r) -> k \/ b -> n /\ r

Unnamed_thm < intro.
1 subgoal

  k : Prop
  b : Prop
  n : Prop
  r : Prop
  H : (k \/ b -> n /\ r) /\ (k \/ b)
  H0 : k \/ b -> n /\ r
  ============================
   k \/ b -> n /\ r

Unnamed_thm < intro.
1 subgoal

  k : Prop
  b : Prop
  n : Prop
  r : Prop
  H : (k \/ b -> n /\ r) /\ (k \/ b)
  H0 : k \/ b -> n /\ r
  H1 : k \/ b
  ============================
   n /\ r

Unnamed_thm < apply H0.
1 subgoal

  k : Prop
  b : Prop
  n : Prop
  r : Prop
  H : (k \/ b -> n /\ r) /\ (k \/ b)
  H0 : k \/ b -> n /\ r
  H1 : k \/ b
  ============================
   k \/ b

Unnamed_thm < exact H1.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply H0.
exact H1.

Unnamed_thm is defined

Coq <

*)

Section Complex_MP.
Goal forall k b n r:Prop, (((k \/ b) -> (n /\ r)) /\ (k \/ b)) -> (n /\ r).
intros.
elim H.
intro.
intro.
apply H0.
exact H1.
Qed.
