MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal ((P \/ ~Q) /\ Q /\ ~~Q) -> P.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   (P \/ ~ Q) /\ Q /\ ~ ~ Q -> P

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ ~ Q) /\ Q /\ ~ ~ Q
  ============================
   P

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ ~ Q) /\ Q /\ ~ ~ Q
  ============================
   P \/ ~ Q -> Q /\ ~ ~ Q -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ ~ Q) /\ Q /\ ~ ~ Q
  H0 : P \/ ~ Q
  ============================
   Q /\ ~ ~ Q -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : (P \/ ~ Q) /\ Q /\ ~ ~ Q
  H0 : P \/ ~ Q
  H1 : Q /\ ~ ~ Q
  ============================
   P

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq < 
