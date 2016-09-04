Coq < Section Distribution.

Coq < Variables P Q R : Prop.
P is assumed
Q is assumed
R is assumed

Coq < Goal (P /\ Q) \/ (P /\ R) -> (P /\ (Q \/ R)).
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  ============================
   P /\ Q \/ P /\ R -> P /\ (Q \/ R)

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ Q \/ P /\ R
  ============================
   P /\ (Q \/ R)

Unnamed_thm < destruct H.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ Q
  ============================
   P /\ (Q \/ R)

subgoal 2 is:
 P /\ (Q \/ R)

Unnamed_thm < split.
3 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ Q
  ============================
   P

subgoal 2 is:
 Q \/ R
subgoal 3 is:
 P /\ (Q \/ R)

Unnamed_thm < auto.
3 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ Q
  ============================
   P

subgoal 2 is:
 Q \/ R
subgoal 3 is:
 P /\ (Q \/ R)

Unnamed_thm < tauto.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ Q
  ============================
   Q \/ R

subgoal 2 is:
 P /\ (Q \/ R)

Unnamed_thm < left.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ Q
  ============================
   Q

subgoal 2 is:
 P /\ (Q \/ R)

Unnamed_thm < tauto.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ R
  ============================
   P /\ (Q \/ R)

Unnamed_thm < split.
2 subgoals
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ R
  ============================
   P

subgoal 2 is:
 Q \/ R

Unnamed_thm < tauto.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ R
  ============================
   Q \/ R

Unnamed_thm < right.
1 subgoal
  
  P : Prop
  Q : Prop
  R : Prop
  H : P /\ R
  ============================
   R

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intro.
destruct H.
 split.
  auto.
  tauto.
  
  left.
  tauto.
  
 split.
  tauto.
  
  right.
  tauto.
  
Unnamed_thm is defined
