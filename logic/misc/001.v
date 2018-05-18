C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Theorem exp001 : (forall I R : Prop, ((I /\ ~R) /\ I) -> ~R).
1 subgoal
  
  ============================
  forall I R : Prop, (I /\ ~ R) /\ I -> ~ R

exp001 < Proof.

exp001 < intros.
1 subgoal
  
  I, R : Prop
  H : (I /\ ~ R) /\ I
  ============================
  ~ R

exp001 < destruct H.
1 subgoal
  
  I, R : Prop
  H : I /\ ~ R
  H0 : I
  ============================
  ~ R

exp001 < destruct H.
1 subgoal
  
  I, R : Prop
  H : I
  H1 : ~ R
  H0 : I
  ============================
  ~ R

exp001 < exact H1.
No more subgoals.

exp001 < Qed.
exp001 is defined
