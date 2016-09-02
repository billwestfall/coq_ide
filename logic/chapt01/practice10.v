Coq < Section Car.

Coq < Require Import Classical.

Coq < Variables C P M : Prop.
C is assumed
P is assumed
M is assumed

Coq < Goal (~C -> P) /\ (M -> P) -> (M -> ~C).
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  ============================
   (~ C -> P) /\ (M -> P) -> M -> ~ C

Unnamed_thm < intros.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : (~ C -> P) /\ (M -> P)
  H0 : M
  ============================
   ~ C

Unnamed_thm < elim H.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : (~ C -> P) /\ (M -> P)
  H0 : M
  ============================
   (~ C -> P) -> (M -> P) -> ~ C

Unnamed_thm < intro.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : (~ C -> P) /\ (M -> P)
  H0 : M
  H1 : ~ C -> P
  ============================
   (M -> P) -> ~ C

Unnamed_thm < intro.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : (~ C -> P) /\ (M -> P)
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  ============================
   ~ C

Unnamed_thm < auto.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : (~ C -> P) /\ (M -> P)
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  ============================
   ~ C

Unnamed_thm < auto.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : (~ C -> P) /\ (M -> P)
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  ============================
   ~ C

Unnamed_thm < destruct H.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : ~ C -> P
  H3 : M -> P
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  ============================
   ~ C

Unnamed_thm < intro.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : ~ C -> P
  H3 : M -> P
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  H4 : C
  ============================
   False

Unnamed_thm < auto.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : ~ C -> P
  H3 : M -> P
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  H4 : C
  ============================
   False


Unnamed_thm < simpl.
1 subgoal
  
  C : Prop
  P : Prop
  M : Prop
  H : ~ C -> P
  H3 : M -> P
  H0 : M
  H1 : ~ C -> P
  H2 : M -> P
  H4 : C
  ============================
   False
