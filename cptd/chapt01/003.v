Coq < Section Easy003.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables A H J: Prop.
A is assumed
H is assumed
J is assumed

Coq < Goal (A -> (H /\ J)) /\ (J <-> H) /\ ~J -> ~A.
1 subgoal
  
  A : Prop
  H : Prop
  J : Prop
  ============================
   (A -> H /\ J) /\ (J <-> H) /\ ~ J -> ~ A

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
