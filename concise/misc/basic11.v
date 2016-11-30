MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q R S F : Prop.
P is assumed
Q is assumed
R is assumed
S is assumed
F is assumed

Coq < Goal (((P /\ Q) -> ~R) /\ (~R -> (S \/ F))) -> ((P /\ Q) -> (S \/ F)).
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  F : Prop
  ============================
   (P /\ Q -> ~ R) /\ (~ R -> S \/ F) -> P /\ Q -> S \/ F

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  F : Prop
  H : (P /\ Q -> ~ R) /\ (~ R -> S \/ F)
  H0 : P /\ Q
  ============================
   S \/ F

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  F : Prop
  H : (P /\ Q -> ~ R) /\ (~ R -> S \/ F)
  H0 : P /\ Q
  ============================
   (P /\ Q -> ~ R) -> (~ R -> S \/ F) -> S \/ F

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  F : Prop
  H : (P /\ Q -> ~ R) /\ (~ R -> S \/ F)
  H0 : P /\ Q
  H1 : P /\ Q -> ~ R
  ============================
   (~ R -> S \/ F) -> S \/ F

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  F : Prop
  H : (P /\ Q -> ~ R) /\ (~ R -> S \/ F)
  H0 : P /\ Q
  H1 : P /\ Q -> ~ R
  H2 : ~ R -> S \/ F
  ============================
   S \/ F

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
tauto.

Unnamed_thm is defined

Coq < 
