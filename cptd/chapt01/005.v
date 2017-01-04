Coq < Section Easy005.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables D G A: Prop.
D is assumed
G is assumed
A is assumed

Coq < Goal ((D <-> ~G) /\ G) /\ (G \/ ((A -> D) /\ A)) -> (G -> ~D).
1 subgoal
  
  D : Prop
  G : Prop
  A : Prop
  ============================
   ((D <-> ~ G) /\ G) /\ (G \/ (A -> D) /\ A) -> G -> ~ D

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
