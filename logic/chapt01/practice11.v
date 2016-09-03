Coq < Section Simple.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal (P /\ (P -> Q)) -> Q.
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P /\ (P -> Q) -> Q

Unnamed_thm < intros.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ (P -> Q)
  ============================
   Q

Unnamed_thm < elim H.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ (P -> Q)
  ============================
   P -> (P -> Q) -> Q

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ (P -> Q)
  H0 : P
  ============================
   (P -> Q) -> Q

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P /\ (P -> Q)
  H0 : P
  H1 : P -> Q
  ============================
   Q

Unnamed_thm < auto.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
auto.

Unnamed_thm is defined
