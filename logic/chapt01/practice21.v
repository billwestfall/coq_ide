Coq < Section Code_Concept.

Coq < Require Import Classical.

Coq < Variables A B F : Prop.
A is assumed
B is assumed
F is assumed

Coq < Goal ((A /\ F) /\ (B /\ F)) -> (A /\ B).
1 subgoal
  
  A : Prop
  B : Prop
  F : Prop
  ============================
   (A /\ F) /\ B /\ F -> A /\ B

Unnamed_thm < intros.
1 subgoal
  
  A : Prop
  B : Prop
  F : Prop
  H : (A /\ F) /\ B /\ F
  ============================
   A /\ B

Unnamed_thm < destruct H.
1 subgoal
  
  A : Prop
  B : Prop
  F : Prop
  H : A /\ F
  H0 : B /\ F
  ============================
   A /\ B

Unnamed_thm < split.
2 subgoals
  
  A : Prop
  B : Prop
  F : Prop
  H : A /\ F
  H0 : B /\ F
  ============================
   A

subgoal 2 is:
 B

Unnamed_thm < apply H.
1 subgoal
  
  A : Prop
  B : Prop
  F : Prop
  H : A /\ F
  H0 : B /\ F
  ============================
   B

Unnamed_thm < apply H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
destruct H.
split.
 apply H.

 apply H0.

Unnamed_thm is defined
