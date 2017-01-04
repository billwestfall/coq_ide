Coq < Section Easy009.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables G H: Prop.
G is assumed
H is assumed

Coq < Goal (G <-> H) \/ (~G <-> H) -> (~G <-> ~H) \/ ~(G <-> H).
1 subgoal
  
  G : Prop
  H : Prop
  ============================
   (G <-> H) \/ (~ G <-> H) -> (~ G <-> ~ H) \/ ~ (G <-> H)

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
