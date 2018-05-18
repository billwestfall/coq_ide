C02W82DBHV2R:~ i847419$ coqtop
Welcome to Coq 8.8.0 (April 2018)

Coq < Require Import Classical.

Coq < Theorem exp010 : (forall R S L M : Prop, ((R <-> ~S) /\ (L /\ M)) -> ((L /\ M) /\ (R <-> ~S))).
1 subgoal
  
  ============================
  forall R S L M : Prop, (R <-> ~ S) /\ L /\ M -> (L /\ M) /\ (R <-> ~ S)

exp010 < intros.
1 subgoal
  
  R, S, L, M : Prop
  H : (R <-> ~ S) /\ L /\ M
  ============================
  (L /\ M) /\ (R <-> ~ S)

exp010 < tauto.     
No more subgoals.

exp010 < Qed.
exp010 is defined

Coq < 
