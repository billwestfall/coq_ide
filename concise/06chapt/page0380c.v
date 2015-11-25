(*
Last login: Tue Nov 24 21:05:38 on ttys000
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_A.

Coq < Goal forall m n h k l c d f g:Prop, (((~m /\ ~n) -> ((~m \/ h) -> (k /\ l))) /\ (~m /\ (c -> d)) /\ (~n /\ (f <-> g))) -> (k /\ ~n).
1 subgoal

  ============================
   forall m n h k l c d f g : Prop,
   (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
   (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g) -> k /\ ~ n

Unnamed_thm < intros.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   k /\ ~ n

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   (~ m /\ ~ n -> ~ m \/ h -> k /\ l) ->
   (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g) -> k /\ ~ n

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  ============================
   (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g) -> k /\ ~ n

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   k /\ ~ n

Unnamed_thm < decompose [and or] H.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  ============================
   k /\ ~ n

Unnamed_thm < split.
2 subgoals

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  ============================
   k

subgoal 2 is:
 ~ n

Unnamed_thm < 2:exact H4.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  ============================
   k

Unnamed_thm < decompose [and or] H0.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  ============================
   k

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  ============================
   (~ m /\ ~ n -> ~ m \/ h -> k /\ l) ->
   (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g) -> k

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  H5 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  ============================
   (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g) -> k

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  H5 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H8 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   k

Unnamed_thm < destruct H5.
3 subgoals

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  H8 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   ~ m /\ ~ n

subgoal 2 is:
 ~ m \/ h
subgoal 3 is:
 k

Unnamed_thm < info_auto.
(* info auto : *)
 apply conj.
  assumption.
  assumption.
2 subgoals

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  H8 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   ~ m \/ h

subgoal 2 is:
 k

Unnamed_thm < info_auto.
(* info auto : *)
 apply or_introl.
  assumption.
1 subgoal

  m : Prop
  n : Prop
  h : Prop
  k : Prop
  l : Prop
  c : Prop
  d : Prop
  f : Prop
  g : Prop
  H : (~ m /\ ~ n -> ~ m \/ h -> k /\ l) /\
      (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H0 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H1 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  H2 : ~ m /\ ~ n -> ~ m \/ h -> k /\ l
  H3 : ~ m
  H6 : c -> d
  H4 : ~ n
  H7 : f <-> g
  H5 : k
  H9 : l
  H8 : (~ m /\ (c -> d)) /\ ~ n /\ (f <-> g)
  ============================
   k

Unnamed_thm < exact H5.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
decompose [and or] H.
split.
 2: exact H4.
 decompose [and or] H0.
 elim H.
 intro.
 intro.
 destruct H5.
  info_auto.
  info_auto.
  exact H5.

Unnamed_thm is defined

Coq <

*)

Section Exercise_A.
Goal forall m n h k l c d f g:Prop, (((~m /\ ~n) -> ((~m \/ h) -> (k /\ l))) /\ (~m /\ (c -> d)) /\ (~n /\ (f <-> g))) -> (k /\ ~n).
intros.
elim H.
intro.
intro.
decompose [and or] H.
split.
 2: exact H4.
 decompose [and or] H0.
 elim H.
 intro.
 intro.
 destruct H5.
  info_auto.
  info_auto.
  exact H5.
Qed.
