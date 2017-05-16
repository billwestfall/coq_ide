MacBook-Air:foundations billw$ coqtop
Welcome to Coq 8.4pl6 (January 2017)

Coq < Section Restart.

Coq < Goal forall a b c:Prop, ((a /\ b) /\ (a /\ c)) -> (a /\ c).
1 subgoal
  
  ============================
   forall a b c : Prop, (a /\ b) /\ a /\ c -> a /\ c

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a /\ b) /\ a /\ c
  ============================
   a /\ c

Unnamed_thm < destruct H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : a /\ b
  H0 : a /\ c
  ============================
   a /\ c

Unnamed_thm < exact H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
exact H0.

Unnamed_thm is defined
