MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal ((P \/ Q) /\ P) -> ~Q.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   (P \/ Q) /\ P -> ~ Q

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ Q) /\ P
  ============================
   ~ Q

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ Q) /\ P
  ============================
   P \/ Q -> P -> ~ Q

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ Q) /\ P
  H0 : P \/ Q
  ============================
   P -> ~ Q

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ Q) /\ P
  H0 : P \/ Q
  H1 : P
  ============================
   ~ Q

Unnamed_thm < firstorder.
4 subgoals
  
  P : Prop
  Q : Prop
  H1 : P
  H2 : P
  H : P
  H0 : P
  ============================
   ~ Q

subgoal 2 is:
 ~ Q
subgoal 3 is:
 ~ Q
subgoal 4 is:
 ~ Q

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.

Unnamed_thm < 
