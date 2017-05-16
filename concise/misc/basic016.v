MacBook-Air:~ billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Restart_02.

Coq < Require Import Classical.

Coq < Goal forall a b c:Prop, ((a -> b) /\ (b -> c)) -> (a -> c).
1 subgoal
  
  ============================
   forall a b c : Prop, (a -> b) /\ (b -> c) -> a -> c

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a -> b) /\ (b -> c)
  H0 : a
  ============================
   c

Unnamed_thm < destruct H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : a -> b
  H1 : b -> c
  H0 : a
  ============================
   c

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
firstorder .

Unnamed_thm is defined
