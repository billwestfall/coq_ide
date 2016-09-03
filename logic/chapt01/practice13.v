Coq < Section Simplification.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal (P /\ Q) -> P.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P /\ Q -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ Q
  ============================
   P

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ Q
  ============================
   P -> Q -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ Q
  H0 : P
  ============================
   Q -> P

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ Q
  H0 : P
  H1 : Q
  ============================
   P

Unnamed_thm < exact H0.
Proof completed.

Unnamed_thm < Qed.
intro.
elim H.
intro.
intro.
exact H0.

Unnamed_thm is defined
