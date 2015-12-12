(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Replacement_E.

Coq < Goal forall k f b g:Prop, ((k -> (f \/ b)) /\ (g /\ k)) -> ((f /\ g) \/ (b /\ g)).
1 subgoal

  ============================
   forall k f b g : Prop, (k -> f \/ b) /\ g /\ k -> f /\ g \/ b /\ g

Unnamed_thm < intros.
1 subgoal

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  ============================
   f /\ g \/ b /\ g

Unnamed_thm < elim H.
1 subgoal

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  ============================
   (k -> f \/ b) -> g /\ k -> f /\ g \/ b /\ g

Unnamed_thm < intro.
1 subgoal

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  H0 : k -> f \/ b
  ============================
   g /\ k -> f /\ g \/ b /\ g

Unnamed_thm < intro.
1 subgoal

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  H0 : k -> f \/ b
  H1 : g /\ k
  ============================
   f /\ g \/ b /\ g

Unnamed_thm < left.
1 subgoal

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  H0 : k -> f \/ b
  H1 : g /\ k
  ============================
   f /\ g

Unnamed_thm < apply conj.
2 subgoals

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  H0 : k -> f \/ b
  H1 : g /\ k
  ============================
   f

subgoal 2 is:
 g

Unnamed_thm < 2:apply H1.
1 subgoal

  k : Prop
  f : Prop
  b : Prop
  g : Prop
  H : (k -> f \/ b) /\ g /\ k
  H0 : k -> f \/ b
  H1 : g /\ k
  ============================
   f

*)
