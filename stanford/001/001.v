MacBook-Air:001 I847419$ coqtop
Welcome to Coq 8.7.1 (December 2017)

Coq < Section Socrates.

Coq < Goal forall a b c:Prop, ((a /\ b) /\ (b /\ c)) -> (a /\ c).
1 subgoal
  
  ============================
  forall a b c : Prop, (a /\ b) /\ b /\ c -> a /\ c

Unnamed_thm < intros.
1 subgoal
  
  a, b, c : Prop
  H : (a /\ b) /\ b /\ c
  ============================
  a /\ c

Unnamed_thm < destruct H.
1 subgoal
  
  a, b, c : Prop
  H : a /\ b
  H0 : b /\ c
  ============================
  a /\ c

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
Unnamed_thm is defined

Coq < 
