
(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Socrates.

Coq < Variables A B C : Prop.
A is assumed
B is assumed
C is assumed

Coq < Goal (A -> B) /\ (C -> A) -> (C -> B).
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  ============================
   (A -> B) /\ (C -> A) -> C -> B

Unnamed_thm < intro H.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : (A -> B) /\ (C -> A)
  ============================
   C -> B

Unnamed_thm < intro HA.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : (A -> B) /\ (C -> A)
  HA : C
  ============================
   B

Unnamed_thm < apply H.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : (A -> B) /\ (C -> A)
  HA : C
  ============================
   A

Unnamed_thm < apply H.
1 subgoal

  A : Prop
  B : Prop
  C : Prop
  H : (A -> B) /\ (C -> A)
  HA : C
  ============================
   C

Unnamed_thm < exact HA.
No more subgoals.

Unnamed_thm < Qed.
intro H.
intro HA.
apply H.
apply H.
exact HA.

Unnamed_thm is defined

Coq <
*)

Section Socrates.
Variables A B C : Prop.
Goal (A -> B) /\ (C -> A) -> (C -> B).
intro H.
intro HA.
apply H.
apply H.
exact HA.
assumption.
Qed.
