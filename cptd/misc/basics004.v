MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Restart_08.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall k s g:Prop, ((k /\ g) /\ (s /\ g)) -> (k /\ s /\ g).
1 subgoal
  
  ============================
   forall k s g : Prop, (k /\ g) /\ s /\ g -> k /\ s /\ g

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
