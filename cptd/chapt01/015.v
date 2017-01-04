Coq < Section Easy015.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables U V W X: Prop.
U is assumed
V is assumed
W is assumed
X is assumed

Coq < Goal ((U -> V) /\ (W -> X) /\ (V -> W)) -> (U -> X).
1 subgoal
  
  U : Prop
  V : Prop
  W : Prop
  X : Prop
  ============================
   (U -> V) /\ (W -> X) /\ (V -> W) -> U -> X

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
