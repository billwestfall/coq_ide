MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Reality_Check03.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall b w m f g:Prop, (((m /\ f /\ b) /\ g) /\ ((m /\ f /\ w) /\ g)) -> ((f /\ w /\ b) /\ g).
1 subgoal
  
  ============================
   forall b w m f g : Prop,
   ((m /\ f /\ b) /\ g) /\ (m /\ f /\ w) /\ g -> (f /\ w /\ b) /\ g

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
