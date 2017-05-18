MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Reality_Check04.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall b w m f g:Prop, (((m /\ f /\ b) -> g) \/ ((m /\ f /\ w) -> g)) -> ((f /\ w /\ b) -> g).
1 subgoal
  
  ============================
   forall b w m f g : Prop,
   (m /\ f /\ b -> g) \/ (m /\ f /\ w -> g) -> f /\ w /\ b -> g

Unnamed_thm < crush.
2 subgoals
  
  b : Prop
  w : Prop
  m : Prop
  f : Prop
  g : Prop
  H1 : f
  H0 : w
  H3 : b
  H : m -> f /\ b -> g
  ============================
   g

subgoal 2 is:
 g
