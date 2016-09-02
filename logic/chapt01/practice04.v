Coq < Section Complex.

Coq < Variables A B C : Prop.
A is assumed
B is assumed
C is assumed

Coq < Goal A -> B /\ C -> (A -> B) /\ (A -> C).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   A -> B /\ C -> (A -> B) /\ (A -> C)

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  ============================
   B /\ C -> (A -> B) /\ (A -> C)

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B /\ C
  ============================
   (A -> B) /\ (A -> C)

Unnamed_thm < destruct H0.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B
  H1 : C
  ============================
   (A -> B) /\ (A -> C)

Unnamed_thm < split.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B
  H1 : C
  ============================
   A -> B

subgoal 2 is:
 A -> C

Unnamed_thm < intro.
2 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B
  H1 : C
  H2 : A
  ============================
   B

subgoal 2 is:
 A -> C

Unnamed_thm < exact H0.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B
  H1 : C
  ============================
   A -> C

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : A
  H0 : B
  H1 : C
  H2 : A
  ============================
   C

Unnamed_thm < exact H1.
Proof completed.

Unnamed_thm < Qed.
intro.
intro.
destruct H0.
split.
 intro.
 exact H0.
 
 intro.
 exact H1.
 
Unnamed_thm is defined
