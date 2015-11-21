(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Valid_Consequent.

Coq < Goal forall p q:Prop, (((f \/ d) -> (f /\ d)) /\ (f /\ d)) -> (f \/ d).
Toplevel input, characters 63-64:
> Goal forall p q:Prop, (((f \/ d) -> (f /\ d)) /\ (f /\ d)) -> (f \/ d).
>                                                                ^
Error: The reference f was not found in the current environment.

Coq < Goal forall f d:Prop, (((f \/ d) -> (f /\ d)) /\ (f /\ d)) -> (f \/ d).
1 subgoal

  ============================
   forall f d : Prop, (f \/ d -> f /\ d) /\ f /\ d -> f \/ d

Unnamed_thm < intros.
1 subgoal

  f : Prop
  d : Prop
  H : (f \/ d -> f /\ d) /\ f /\ d
  ============================
   f \/ d

Unnamed_thm < elim H.
1 subgoal

  f : Prop
  d : Prop
  H : (f \/ d -> f /\ d) /\ f /\ d
  ============================
   (f \/ d -> f /\ d) -> f /\ d -> f \/ d

Unnamed_thm < intro.
1 subgoal

  f : Prop
  d : Prop
  H : (f \/ d -> f /\ d) /\ f /\ d
  H0 : f \/ d -> f /\ d
  ============================
   f /\ d -> f \/ d

Unnamed_thm < intro.
1 subgoal

  f : Prop
  d : Prop
  H : (f \/ d -> f /\ d) /\ f /\ d
  H0 : f \/ d -> f /\ d
  H1 : f /\ d
  ============================
   f \/ d

Unnamed_thm < decompose [and or] H.
1 subgoal

  f : Prop
  d : Prop
  H : (f \/ d -> f /\ d) /\ f /\ d
  H0 : f \/ d -> f /\ d
  H1 : f /\ d
  H2 : f \/ d -> f /\ d
  H4 : f
  H5 : d
  ============================
   f \/ d

Unnamed_thm < left.
1 subgoal

  f : Prop
  d : Prop
  H : (f \/ d -> f /\ d) /\ f /\ d
  H0 : f \/ d -> f /\ d
  H1 : f /\ d
  H2 : f \/ d -> f /\ d
  H4 : f
  H5 : d
  ============================
   f

Unnamed_thm < exact H4.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
decompose [and or] H.
left.
exact H4.

Unnamed_thm is defined

Coq <

*)

Section Destructive_Dilemma.
Goal forall f d:Prop, (((f \/ d) -> (f /\ d)) /\ (f /\ d)) -> (f \/ d).
intros.
elim H.
intro.
intro.
decompose [and or] H.
left.
exact H4.
Qed.
