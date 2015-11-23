(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Combination_A.

Coq < Goal forall k l m n s t:Prop, ((k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)) -> (l \/ t).
1 subgoal

  ============================
   forall k l m n s t : Prop,
   (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m) -> l \/ t

Unnamed_thm < intros.
1 subgoal

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  ============================
   l \/ t

Unnamed_thm < decompose [and or] H.
2 subgoals

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : k
  ============================
   l \/ t

subgoal 2 is:
 l \/ t

Unnamed_thm < intros.
2 subgoals

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : k
  ============================
   l \/ t

subgoal 2 is:
 l \/ t

Unnamed_thm < destruct H.
2 subgoals

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : k -> l
  H5 : ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : k
  ============================
   l \/ t

subgoal 2 is:
 l \/ t

Unnamed_thm < left.
2 subgoals

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : k -> l
  H5 : ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : k
  ============================
   l

subgoal 2 is:
 l \/ t

Unnamed_thm < apply H0.
2 subgoals

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : k -> l
  H5 : ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : k
  ============================
   k

subgoal 2 is:
 l \/ t

Unnamed_thm < exact H3.
1 subgoal

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : m
  ============================
   l \/ t

Unnamed_thm < left.
1 subgoal

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : m
  ============================
   l

Unnamed_thm < apply H0.
1 subgoal

  k : Prop
  l : Prop
  m : Prop
  n : Prop
  s : Prop
  t : Prop
  H : (k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)
  H0 : k -> l
  H1 : m -> n
  H4 : s
  H2 : n -> t
  H3 : m
  ============================
   k

Unnamed_thm <

*)

Section Combination_A.
Goal forall k l m n s t:Prop, ((k -> l) /\ ((m -> n) /\ s) /\ (n -> t) /\ (k \/ m)) -> (l \/ t).
intros.
decompose [and or] H.
apply H2.
left.
apply H0.
exact H3.
Qed.
