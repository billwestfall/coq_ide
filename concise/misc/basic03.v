MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables P Q R J K M : Prop.
P is assumed
Q is assumed
R is assumed
J is assumed
K is assumed
M is assumed

Coq < Goal ((P \/ ~Q) /\ (Q \/ ~R) /\ (R <-> ( J \/ K)) /\ (K <-> M) /\ (M \/ P)) -> P.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  J : Prop
  K : Prop
  M : Prop
  ============================
   (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P) -> P

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  J : Prop
  K : Prop
  M : Prop
  H : (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  ============================
   P

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  J : Prop
  K : Prop
  M : Prop
  H : (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  ============================
   P \/ ~ Q -> (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P) -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  J : Prop
  K : Prop
  M : Prop
  H : (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  H0 : P \/ ~ Q
  ============================
   (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P) -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  J : Prop
  K : Prop
  M : Prop
  H : (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  H0 : P \/ ~ Q
  H1 : (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  ============================
   P

Unnamed_thm < destruct H1.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  J : Prop
  K : Prop
  M : Prop
  H : (P \/ ~ Q) /\ (Q \/ ~ R) /\ (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  H0 : P \/ ~ Q
  H1 : Q \/ ~ R
  H2 : (R <-> J \/ K) /\ (K <-> M) /\ (M \/ P)
  ============================
   P

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
