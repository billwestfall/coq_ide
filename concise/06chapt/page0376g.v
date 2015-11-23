(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Addition_D.

Coq < Goal forall a b c d e:Prop, ((a -> b) /\ ((b \/ c) -> (d /\ e)) /\ a) -> d.
1 subgoal

  ============================
   forall a b c d e : Prop, (a -> b) /\ (b \/ c -> d /\ e) /\ a -> d

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  H : (a -> b) /\ (b \/ c -> d /\ e) /\ a
  ============================
   d

Unnamed_thm < decompose [and or] H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  H : (a -> b) /\ (b \/ c -> d /\ e) /\ a
  H0 : a -> b
  H2 : b \/ c -> d /\ e
  H3 : a
  ============================
   d

Unnamed_thm < apply H2.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  H : (a -> b) /\ (b \/ c -> d /\ e) /\ a
  H0 : a -> b
  H2 : b \/ c -> d /\ e
  H3 : a
  ============================
   b \/ c

Unnamed_thm < left.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  H : (a -> b) /\ (b \/ c -> d /\ e) /\ a
  H0 : a -> b
  H2 : b \/ c -> d /\ e
  H3 : a
  ============================
   b

Unnamed_thm < apply H0.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  d : Prop
  e : Prop
  H : (a -> b) /\ (b \/ c -> d /\ e) /\ a
  H0 : a -> b
  H2 : b \/ c -> d /\ e
  H3 : a
  ============================
   a

Unnamed_thm < exact H3.
No more subgoals.

Unnamed_thm < Qed.
intros.
decompose [and or] H.
apply H2.
left.
apply H0.
exact H3.

Unnamed_thm is defined

Coq <

*)

Section Addition_D.
Goal forall a b c d e:Prop, ((a -> b) /\ ((b \/ c) -> (d /\ e)) /\ a) -> d.
intros.
decompose [and or] H.
apply H2.
left.
apply H0.
exact H3.
Qed.
