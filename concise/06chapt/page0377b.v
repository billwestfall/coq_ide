(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Combination_B.

Coq < Goal forall m n p q r s t:Prop, ((~m /\ n)/\ (p -> m) /\ (q /\ r) /\ ((~p /\ q) ->s)) -> (s \/ t).
1 subgoal

  ============================
   forall m n p q r s t : Prop,
   (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s) -> s \/ t

Unnamed_thm < intros.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  ============================
   s \/ t

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  ============================
   ~ m /\ n -> (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s) -> s \/ t

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  ============================
   (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s) -> s \/ t

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  ============================
   s \/ t

Unnamed_thm < destruct H1.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : (q /\ r) /\ (~ p /\ q -> s)
  ============================
   s \/ t

Unnamed_thm < destruct H2.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   s \/ t

Unnamed_thm < left.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   s

Unnamed_thm < apply H3.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : (~ m /\ n) /\ (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   ~ p /\ q

Unnamed_thm < destruct H.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : ~ m /\ n
  H4 : (p -> m) /\ (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   ~ p /\ q

Unnamed_thm < destruct H4.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : ~ m /\ n
  H4 : p -> m
  H5 : (q /\ r) /\ (~ p /\ q -> s)
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   ~ p /\ q

Unnamed_thm < destruct H5.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : ~ m /\ n
  H4 : p -> m
  H5 : q /\ r
  H6 : ~ p /\ q -> s
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   ~ p /\ q

Unnamed_thm < split.
2 subgoals

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : ~ m /\ n
  H4 : p -> m
  H5 : q /\ r
  H6 : ~ p /\ q -> s
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   ~ p

subgoal 2 is:
 q

Unnamed_thm < firstorder.
1 subgoal

  m : Prop
  n : Prop
  p : Prop
  q : Prop
  r : Prop
  s : Prop
  t : Prop
  H : ~ m /\ n
  H4 : p -> m
  H5 : q /\ r
  H6 : ~ p /\ q -> s
  H0 : ~ m /\ n
  H1 : p -> m
  H2 : q /\ r
  H3 : ~ p /\ q -> s
  ============================
   q


Unnamed_thm < apply H2.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H1.
destruct H2.
left.
apply H3.
destruct H.
destruct H4.
destruct H5.
split.
firstorder.
apply H2.

Unnamed_thm is defined

Coq <

*)

Section Combination_B.
Goal forall m n p q r s t:Prop, ((~m /\ n)/\ (p -> m) /\ (q /\ r) /\ ((~p /\ q) ->s)) -> (s \/ t).
intros.
elim H.
intro.
intro.
destruct H1.
destruct H2.
left.
apply H3.
destruct H.
destruct H4.
destruct H5.
split.
firstorder.
apply H2.
Qed.
