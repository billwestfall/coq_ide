Coq < Section Classical.

Coq < Require Import Classical.

Coq < Variables A B : Prop.
A is assumed
B is assumed

Coq < Goal ((A -> B) -> A) -> A.
1 subgoal
  
  A : Prop
  B : Prop
  ============================
   ((A -> B) -> A) -> A

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
tauto.

Unnamed_thm is defined
