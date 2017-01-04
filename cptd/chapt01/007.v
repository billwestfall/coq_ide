Coq < Section Easy007.

Coq < Require Import Classical.

Coq < Variables C D E: Prop.
C is assumed
D is assumed
E is assumed

Coq < Load CpdtTactics.

Coq < Goal ((C -> D) -> (D -> E)) /\ D -> (C -> E).
1 subgoal
  
  C : Prop
  D : Prop
  E : Prop
  ============================
   ((C -> D) -> D -> E) /\ D -> C -> E

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
