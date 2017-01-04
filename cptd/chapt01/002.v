Coq < Section Easy001.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables A B C: Prop.
A is assumed
B is assumed
C is assumed

Coq < Goal (A \/ (B \/ C)) -> (A /\ (B /\ C)).
1 subgoal
  
  A : Prop
  B : Prop
  C : Prop
  ============================
   A \/ B \/ C -> A /\ B /\ C

Unnamed_thm < crush.
6 subgoals
  
  A : Prop
  B : Prop
  C : Prop
  H0 : A
  ============================
   B

subgoal 2 is:
 C
subgoal 3 is:
 A
subgoal 4 is:
 C
subgoal 5 is:
 A
subgoal 6 is:
 B

Unnamed_thm < tauto.
Toplevel input, characters 0-5:
> tauto.
> ^^^^^
Error: Classical tauto failed.
