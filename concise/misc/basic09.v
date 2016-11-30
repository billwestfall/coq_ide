MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q R : Prop.
P is assumed
Q is assumed
R is assumed

Coq < Goal ((P \/ Q) /\ (P -> R) /\ (Q -> R)) -> R.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   (P \/ Q) /\ (P -> R) /\ (Q -> R) -> R

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> R)
  ============================
   R

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> R)
  ============================
   P \/ Q -> (P -> R) /\ (Q -> R) -> R

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> R)
  H0 : P \/ Q
  ============================
   (P -> R) /\ (Q -> R) -> R

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> R)
  H0 : P \/ Q
  H1 : (P -> R) /\ (Q -> R)
  ============================
   R

Unnamed_thm < destruct H1.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> R)
  H0 : P \/ Q
  H1 : P -> R
  H2 : Q -> R
  ============================
   R

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H1.
firstorder .

Unnamed_thm is defined

Coq < 
