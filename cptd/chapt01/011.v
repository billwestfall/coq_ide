Coq < Section Easy011.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables E F G H: Prop.
E is assumed
F is assumed
G is assumed
H is assumed

Coq < Goal ((E /\ F) /\ (G /\ H)) -> E.
1 subgoal
  
  E : Prop
  F : Prop
  G : Prop
  H : Prop
  ============================
   (E /\ F) /\ G /\ H -> E

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
