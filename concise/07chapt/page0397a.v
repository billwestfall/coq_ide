(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_04.

Coq < Goal forall m n o:Prop, (m -> n) /\ (m -> o) -> (m -> (n /\ o)).
1 subgoal

  ============================
   forall m n o : Prop, (m -> n) /\ (m -> o) -> m -> n /\ o

Unnamed_thm < intros.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  ============================
   n /\ o

Unnamed_thm < apply conj.
2 subgoals

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  ============================
   n

subgoal 2 is:
 o

Unnamed_thm < elim H.
2 subgoals

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  ============================
   (m -> n) -> (m -> o) -> n

subgoal 2 is:
 o

Unnamed_thm < intro.
2 subgoals

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  H1 : m -> n
  ============================
   (m -> o) -> n

subgoal 2 is:
 o

Unnamed_thm < intro.
2 subgoals

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  H1 : m -> n
  H2 : m -> o
  ============================
   n

subgoal 2 is:
 o

Unnamed_thm < apply H1.
2 subgoals

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  H1 : m -> n
  H2 : m -> o
  ============================
   m

subgoal 2 is:
 o

Unnamed_thm < exact H0.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  H : (m -> n) /\ (m -> o)
  H0 : m
  ============================
   o

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
apply conj.
 elim H.
 intro.
 intro.
 apply H1.
 exact H0.

 tauto.

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_04.
Goal forall m n o:Prop, (m -> n) /\ (m -> o) -> (m -> (n /\ o)).
intros.
apply conj.
 elim H.
 intro.
 intro.
 apply H1.
 exact H0.
 tauto.
 Qed.
