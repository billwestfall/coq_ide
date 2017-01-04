Coq < Section Easy013.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables M N O P: Prop.
M is assumed
N is assumed
O is assumed
P is assumed

Coq < Goal ((M \/ N) \/ (O \/ P)) -> (M /\ P).
1 subgoal
  
  M : Prop
  N : Prop
  O : Prop
  P : Prop
  ============================
   (M \/ N) \/ O \/ P -> M /\ P

Unnamed_thm < crush.
6 subgoals
  
  M : Prop
  N : Prop
  O : Prop
  P : Prop
  H : M
  ============================
   P

subgoal 2 is:
 M
subgoal 3 is:
 P
subgoal 4 is:
 M
subgoal 5 is:
 P
subgoal 6 is:
 M
