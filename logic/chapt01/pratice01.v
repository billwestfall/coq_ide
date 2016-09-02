Coq < Section Minimal_Logic.

Coq < Variables A B C : Prop.
A is assumed
B is assumed
C is assumed

Coq < Check (A -> B).
A -> B
     : Prop

Coq < Goal (A -> B -> C) -> (A -> B) -> A -> C.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   (A -> B -> C) -> (A -> B) -> A -> C

Unnamed_thm < intros.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H0 : A -> B
  H1 : A
  ============================
   C

Unnamed_thm < apply H.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H0 : A -> B
  H1 : A
  ============================
   A

subgoal 2 is:
 B

Unnamed_thm < exact H1.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H0 : A -> B
  H1 : A
  ============================
   B

Unnamed_thm < apply H0.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A -> B -> C
  H0 : A -> B
  H1 : A
  ============================
   A

Unnamed_thm < exact H1.
Proof completed.

Unnamed_thm < Qed.
intros.
apply H.
 intros.
 exact H1.
 
 apply H0.
 exact H1.
 
Unnamed_thm is defined
