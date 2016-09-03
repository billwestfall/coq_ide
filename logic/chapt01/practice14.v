Coq < Section Resolution.

Coq < Variables P Q R : Prop.
P is assumed
Q is assumed
R is assumed

Coq < Goal ((~P \/ R) /\ (P \/ Q)) -> (Q \/ R).
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   (~ P \/ R) /\ (P \/ Q) -> Q \/ R

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  ============================
   Q \/ R

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  ============================
   ~ P \/ R -> P \/ Q -> Q \/ R

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  ============================
   P \/ Q -> Q \/ R

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  H1 : P \/ Q
  ============================
   Q \/ R

Unnamed_thm < destruct H1.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  H1 : P
  ============================
   Q \/ R

subgoal 2 is:
 Q \/ R

Unnamed_thm < right.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  H1 : P
  ============================
   R

subgoal 2 is:
 Q \/ R

Unnamed_thm < auto.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  H1 : P
  ============================
   R

subgoal 2 is:
 Q \/ R

Unnamed_thm < destruct H.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : ~ P \/ R
  H2 : P \/ Q
  H0 : ~ P \/ R
  H1 : P
  ============================
   R

subgoal 2 is:
 Q \/ R

Unnamed_thm < destruct H as [H3|H4].
3 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H3 : ~ P
  H2 : P \/ Q
  H0 : ~ P \/ R
  H1 : P
  ============================
   R

subgoal 2 is:
 R
subgoal 3 is:
 Q \/ R

Unnamed_thm < auto.
3 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H3 : ~ P
  H2 : P \/ Q
  H0 : ~ P \/ R
  H1 : P
  ============================
   R

subgoal 2 is:
 R
subgoal 3 is:
 Q \/ R

Unnamed_thm < tauto.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H4 : R
  H2 : P \/ Q
  H0 : ~ P \/ R
  H1 : P
  ============================
   R

subgoal 2 is:
 Q \/ R

Unnamed_thm < exact H4.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  H1 : Q
  ============================
   Q \/ R

Unnamed_thm < left.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : (~ P \/ R) /\ (P \/ Q)
  H0 : ~ P \/ R
  H1 : Q
  ============================
   Q

Unnamed_thm < exact H1.
Proof completed.

Unnamed_thm < Qed.
intro.
elim H.
intro.
intro.
destruct H1.
 right.
 auto.
 destruct H.
 destruct H as [H3| H4].
  auto.
  tauto.
  
  exact H4.
  
 left.
 exact H1.
 
Unnamed_thm is defined
