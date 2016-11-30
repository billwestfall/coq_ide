MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Esxamples.

Coq < Require Import Classical.

Coq < Variables P Q R S : Prop.
P is assumed
Q is assumed
R is assumed
S is assumed

Coq < Goal ((P \/ Q) /\ (P -> R) /\ (Q -> S)) -> (R \/ S).
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  ============================
   (P \/ Q) /\ (P -> R) /\ (Q -> S) -> R \/ S

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  ============================
   R \/ S

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  ============================
   P \/ Q -> (P -> R) /\ (Q -> S) -> R \/ S

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  H0 : P \/ Q
  ============================
   (P -> R) /\ (Q -> S) -> R \/ S

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  H0 : P \/ Q
  H1 : (P -> R) /\ (Q -> S)
  ============================
   R \/ S

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

