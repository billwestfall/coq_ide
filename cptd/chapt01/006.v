Coq < Section Easy006.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables Y A W: Prop.
Y is assumed
A is assumed
W is assumed

Coq < Goal ~(Y <-> A) /\ ~Y /\ ~A -> (W /\ ~W).
1 subgoal
  
  Y : Prop
  A : Prop
  W : Prop
  ============================
   ~ (Y <-> A) /\ ~ Y /\ ~ A -> W /\ ~ W

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
