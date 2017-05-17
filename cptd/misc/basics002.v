MacBook-Air:src billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Restart_06.

Coq < Require Import Classical.

Coq < Load CpdtTactics.

Coq < Goal forall a b c:Prop, ((a <-> b) /\ (b <-> c)) -> (a <-> c).
1 subgoal
  
  ============================
   forall a b c : Prop, (a <-> b) /\ (b <-> c) -> (a <-> c)

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a <-> b) /\ (b <-> c)
  ============================
   a <-> c

Unnamed_thm < destruct H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : a <-> b
  H0 : b <-> c
  ============================
   a <-> c

Unnamed_thm < crush.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
crush.

Unnamed_thm is defined
