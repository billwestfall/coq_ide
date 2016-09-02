Coq < Section Disjunction.

Coq < Variables A B : Prop.
A is assumed
B is assumed

Coq < Goal A \/ B -> B \/ A.
1 subgoal
  
  A : Prop
  B : Prop
  ============================
   A \/ B -> B \/ A

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  H : A \/ B
  ============================
   B \/ A

Unnamed_thm < elim H.
2 subgoals
  
  A : Prop
  B : Prop
  H : A \/ B
  ============================
   A -> B \/ A

subgoal 2 is:
 B -> B \/ A

Unnamed_thm < intro H1.
2 subgoals
  
  A : Prop
  B : Prop
  H : A \/ B
  H1 : A
  ============================
   B \/ A

subgoal 2 is:
 B -> B \/ A

Unnamed_thm < right.
2 subgoals
  
  A : Prop
  B : Prop
  H : A \/ B
  H1 : A
  ============================
   A

subgoal 2 is:
 B -> B \/ A

Unnamed_thm < exact H1.
1 subgoal
  
  A : Prop
  B : Prop
  H : A \/ B
  ============================
   B -> B \/ A

Unnamed_thm < auto.
Proof completed.

Unnamed_thm < Qed.
intro.
elim H.
 intro H1.
 right.
 exact H1.
 
 auto.
 
Unnamed_thm is defined
