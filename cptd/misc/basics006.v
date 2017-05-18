MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Reality_check01.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall b w m f g:Prop, (((m /\ f /\ b) -> g) /\ ((m /\ f /\ w) -> g)) -> ((f /\ w /\ b) -> g).
1 subgoal
  
  ============================
   forall b w m f g : Prop,
   (m /\ f /\ b -> g) /\ (m /\ f /\ w -> g) -> f /\ w /\ b -> g

Unnamed_thm < crush.
1 subgoal
  
  b : Prop
  w : Prop
  m : Prop
  f : Prop
  g : Prop
  H : f
  H0 : w
  H4 : b
  H3 : m -> f /\ b -> g
  H1 : m -> f /\ w -> g
  ============================
   g
