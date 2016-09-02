Coq < Section Commutative.

Coq < Variables A B : Prop.
A is assumed
B is assumed

Coq < Goal A /\ B -> B /\ A.
1 subgoal
  
  A : Prop
  B : Prop
  ============================
   A /\ B -> B /\ A

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  H : A /\ B
  ============================
   B /\ A

Unnamed_thm < elim H.
1 subgoal
  
  A : Prop
  B : Prop
  H : A /\ B
  ============================
   A -> B -> B /\ A

Unnamed_thm < split.
2 subgoals
  
  A : Prop
  B : Prop
  H : A /\ B
  H0 : A
  H1 : B
  ============================
   B

subgoal 2 is:
 A

Unnamed_thm < exact H1.
1 subgoal
  
  A : Prop
  B : Prop
  H : A /\ B
  H0 : A
  H1 : B
  ============================
   A

Unnamed_thm < exact H0.
Proof completed.

Unnamed_thm < Qed.
intro.
elim H.
split.
 exact H1.
 
 exact H0.
 
Unnamed_thm is defined
