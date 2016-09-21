Coq < Section More_Practice.

Coq < Require Import Classical.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal (P /\ Q) -> (Q /\ P).
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P /\ Q -> Q /\ P

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ Q
  ============================
   Q /\ P

Unnamed_thm < destruct H.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P
  H0 : Q
  ============================
   Q /\ P

Unnamed_thm < split.
2 subgoals
  
  P : Prop
  Q : Prop
  H : P
  H0 : Q
  ============================
   Q

subgoal 2 is:
 P

Unnamed_thm < exact H0.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P
  H0 : Q
  ============================
   P

Unnamed_thm < exact H.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
split.
 exact H0.

 exact H.

Unnamed_thm is defined
