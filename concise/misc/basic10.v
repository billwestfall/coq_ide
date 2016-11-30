MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

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

Unnamed_thm < left.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  H0 : P \/ Q
  H1 : (P -> R) /\ (Q -> S)
  ============================
   R

Unnamed_thm < destruct H1.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H : (P \/ Q) /\ (P -> R) /\ (Q -> S)
  H0 : P \/ Q
  H1 : P -> R
  H2 : Q -> S
  ============================
   R

Unnamed_thm < firstorder.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H1 : P -> R
  H3 : P -> R
  H : Q
  H0 : Q
  H4 : S
  H2 : S
  ============================
   R

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < auto.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H1 : P -> R
  H3 : P -> R
  H : Q
  H0 : Q
  H4 : S
  H2 : S
  ============================
   R

Unnamed_thm < apply H1.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H1 : P -> R
  H3 : P -> R
  H : Q
  H0 : Q
  H4 : S
  H2 : S
  ============================
   P

Unnamed_thm < firstorder.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H1 : P -> R
  H3 : P -> R
  H : Q
  H0 : Q
  H4 : S
  H2 : S
  ============================
   P

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < auto.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  S : Prop
  H1 : P -> R
  H3 : P -> R
  H : Q
  H0 : Q
  H4 : S
  H2 : S
  ============================
   P

Unnamed_thm < destruct H3. 
Toplevel input, characters 0-11:
> destruct H3.
> ^^^^^^^^^^^
Error: Not an inductive product.

Unnamed_thm < elim H3.
Toplevel input, characters 0-7:
> elim H3.
> ^^^^^^^
Error: Not an inductive product.

Unnamed_thm < 
