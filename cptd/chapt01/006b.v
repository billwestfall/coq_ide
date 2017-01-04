Coq < Section Easy006b.

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

Unnamed_thm < intros.
1 subgoal
  
  Y : Prop
  A : Prop
  W : Prop
  H : ~ (Y <-> A) /\ ~ Y /\ ~ A
  ============================
   W /\ ~ W

Unnamed_thm < destruct H.
1 subgoal
  
  Y : Prop
  A : Prop
  W : Prop
  H : ~ (Y <-> A)
  H0 : ~ Y /\ ~ A
  ============================
   W /\ ~ W

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
auto.
tauto.

Unnamed_thm is defined
