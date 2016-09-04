Coq < Section Distribution.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal (P /\ Q) \/ (P /\ ~Q) -> P.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P /\ Q \/ P /\ ~ Q -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ Q \/ P /\ ~ Q
  ============================
   P

Unnamed_thm < destruct H.
2 subgoals
  
  P : Prop
  Q : Prop
  H : P /\ Q
  ============================
   P

subgoal 2 is:
 P

Unnamed_thm < tauto.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ ~ Q
  ============================
   P

Unnamed_thm < tauto.
Proof completed.

Unnamed_thm < Qed.
intro.
destruct H.
 tauto.
 
 tauto.
 
Unnamed_thm is defined
