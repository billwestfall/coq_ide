Coq < Section Easy017.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Variables F G: Prop.
F is assumed
G is assumed

Coq < Goal ((~~F -> ~~G) /\ (~G -> ~F)) -> (G -> F).
1 subgoal
  
  F : Prop
  G : Prop
  ============================
   (~ ~ F -> ~ ~ G) /\ (~ G -> ~ F) -> G -> F

Unnamed_thm < crush.
1 subgoal
  
  F : Prop
  G : Prop
  H0 : G
  H1 : ((F -> False) -> False) -> (G -> False) -> False
  H2 : (G -> False) -> F -> False
  ============================
   F
