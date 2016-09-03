Coq < Section Simple.

Coq < Variables P Q : Prop.
P is assumed
Q is assumed

Coq < Goal P -> (P \/ Q).
1 subgoal
  
  P : Prop
  Q : Prop
  ============================
   P -> P \/ Q

Unnamed_thm < intro.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P
  ============================
   P \/ Q

Unnamed_thm < left.
1 subgoal
  
  P : Prop
  Q : Prop
  H : P
  ============================
   P

Unnamed_thm < exact H.
Proof completed.

Unnamed_thm < Qed.
intro.
left.
exact H.

Unnamed_thm is defined
