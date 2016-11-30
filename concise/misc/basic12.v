MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Examples.

Coq < Require Import Classical.

Coq < Variables R F S : Prop.
R is assumed
F is assumed
S is assumed

Coq < Goal ((~R -> (F -> S)) /\ ((F -> S) -> ~R)) -> (~R -> ~R).
1 subgoal
  
  R : Prop
  F : Prop
  S : Prop
  ============================
   (~ R -> F -> S) /\ ((F -> S) -> ~ R) -> ~ R -> ~ R

Unnamed_thm < intros.
1 subgoal
  
  R : Prop
  F : Prop
  S : Prop
  H : (~ R -> F -> S) /\ ((F -> S) -> ~ R)
  H0 : ~ R
  ============================
   ~ R

Unnamed_thm < elim H.
1 subgoal
  
  R : Prop
  F : Prop
  S : Prop
  H : (~ R -> F -> S) /\ ((F -> S) -> ~ R)
  H0 : ~ R
  ============================
   (~ R -> F -> S) -> ((F -> S) -> ~ R) -> ~ R

Unnamed_thm < intro.
1 subgoal
  
  R : Prop
  F : Prop
  S : Prop
  H : (~ R -> F -> S) /\ ((F -> S) -> ~ R)
  H0 : ~ R
  H1 : ~ R -> F -> S
  ============================
   ((F -> S) -> ~ R) -> ~ R

Unnamed_thm < intro.
1 subgoal
  
  R : Prop
  F : Prop
  S : Prop
  H : (~ R -> F -> S) /\ ((F -> S) -> ~ R)
  H0 : ~ R
  H1 : ~ R -> F -> S
  H2 : (F -> S) -> ~ R
  ============================
   ~ R

Unnamed_thm < exact H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
exact H0.

Unnamed_thm is defined

Coq < 
