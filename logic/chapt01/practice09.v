Coq < Section Socrates.

Coq < Require Import Classical.

Coq < Variables A B C : Prop.
A is assumed
B is assumed
C is assumed

Coq < Goal (A -> C) /\ (B -> A) -> (B -> C).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   (A -> C) /\ (B -> A) -> B -> C

Unnamed_thm < intros.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : (A -> C) /\ (B -> A)
  H0 : B
  ============================
   C

Unnamed_thm < apply H.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : (A -> C) /\ (B -> A)
  H0 : B
  ============================
   A

Unnamed_thm < elim H.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : (A -> C) /\ (B -> A)
  H0 : B
  ============================
   (A -> C) -> (B -> A) -> A

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : (A -> C) /\ (B -> A)
  H0 : B
  H1 : A -> C
  ============================
   (B -> A) -> A

Unnamed_thm < intro.
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  H : (A -> C) /\ (B -> A)
  H0 : B
  H1 : A -> C
  H2 : B -> A
  ============================
   A

Unnamed_thm < auto.
No more subgoals.

Unnamed_thm < Qed.
intros.
apply H.
elim H.
intro.
intro.
auto.

Unnamed_thm is defined
