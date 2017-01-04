Coq < Section Easy010. 

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables A B C D: Prop.
A is assumed
B is assumed
C is assumed
D is assumed

Coq < Goal ((A \/ B) \/ (C /\ D)) -> ((A /\ B) /\ (C \/ D)).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  ============================
   (A \/ B) \/ C /\ D -> (A /\ B) /\ (C \/ D)

Unnamed_thm < crush.
6 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  D : Prop
  H : A
  ============================
   B

subgoal 2 is:
 C \/ D
subgoal 3 is:
 A
subgoal 4 is:
 C \/ D
subgoal 5 is:
 A
subgoal 6 is:
 B
