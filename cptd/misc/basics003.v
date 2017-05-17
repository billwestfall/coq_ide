MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Restart_07.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall s k g:Prop, ((k -> g) /\ (s -> k)) -> (s -> g).
1 subgoal
  
  ============================
   forall s k g : Prop, (k -> g) /\ (s -> k) -> s -> g

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
crush.

Unnamed_thm is defined
