(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Replacement_C.

Coq < Goal forall d e f:Prop, (d /\ (e \/ f)) /\ (~d \/ ~f) -> (d /\ e).
1 subgoal

  ============================
   forall d e f : Prop, (d /\ (e \/ f)) /\ (~ d \/ ~ f) -> d /\ e

Unnamed_thm < intros.
1 subgoal

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  ============================
   d /\ e

Unnamed_thm < elim H.
1 subgoal

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  ============================
   d /\ (e \/ f) -> ~ d \/ ~ f -> d /\ e

Unnamed_thm < intro.
1 subgoal

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  H0 : d /\ (e \/ f)
  ============================
   ~ d \/ ~ f -> d /\ e

Unnamed_thm < intro.
1 subgoal

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  H0 : d /\ (e \/ f)
  H1 : ~ d \/ ~ f
  ============================
   d /\ e

Unnamed_thm < apply conj.
2 subgoals

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  H0 : d /\ (e \/ f)
  H1 : ~ d \/ ~ f
  ============================
   d

subgoal 2 is:
 e

Unnamed_thm < apply H0.
1 subgoal

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  H0 : d /\ (e \/ f)
  H1 : ~ d \/ ~ f
  ============================
   e

Unnamed_thm < decompose [and or] H0.
2 subgoals

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  H0 : d /\ (e \/ f)
  H1 : ~ d \/ ~ f
  H2 : d
  H4 : e
  ============================
   e

subgoal 2 is:
 e

Unnamed_thm < exact H4.
1 subgoal

  d : Prop
  e : Prop
  f : Prop
  H : (d /\ (e \/ f)) /\ (~ d \/ ~ f)
  H0 : d /\ (e \/ f)
  H1 : ~ d \/ ~ f
  H2 : d
  H4 : f
  ============================
   e

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply conj.
 apply H0.

 decompose [and or] H0.
  exact H4.

  firstorder .

Unnamed_thm is defined

Coq <
*)

Section Replacement_C.
Goal forall d e f:Prop, (d /\ (e \/ f)) /\ (~d \/ ~f) -> (d /\ e).
intros.
elim H.
intro.
intro.
apply conj.
apply H0.
decompose [and or] H0.
 exact H4.
firstorder.
Qed.
