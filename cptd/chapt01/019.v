Coq < Section Easy019.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables J M: Prop.
J is assumed
M is assumed

Coq < Goal (((J \/ M) -> ~(J /\ M)) /\ (M <-> (M -> J))) -> (M -> J).
1 subgoal
  
  J : Prop
  M : Prop
  ============================
   (J \/ M -> ~ (J /\ M)) /\ (M <-> M -> J) -> M -> J

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
