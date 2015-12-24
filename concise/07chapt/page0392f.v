(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_7.

Coq < Goal forall h c t f:Prop, ((h /\ (c /\ t)) /\ ~(~f /\ t)) -> f.
1 subgoal

  ============================
   forall h c t f : Prop, (h /\ c /\ t) /\ ~ (~ f /\ t) -> f

Unnamed_thm < intros.
1 subgoal

  h : Prop
  c : Prop
  t : Prop
  f : Prop
  H : (h /\ c /\ t) /\ ~ (~ f /\ t)
  ============================
   f

Unnamed_thm < elim H.
1 subgoal

  h : Prop
  c : Prop
  t : Prop
  f : Prop
  H : (h /\ c /\ t) /\ ~ (~ f /\ t)
  ============================
   h /\ c /\ t -> ~ (~ f /\ t) -> f

Unnamed_thm < intro.
1 subgoal

  h : Prop
  c : Prop
  t : Prop
  f : Prop
  H : (h /\ c /\ t) /\ ~ (~ f /\ t)
  H0 : h /\ c /\ t
  ============================
   ~ (~ f /\ t) -> f

Unnamed_thm < intro.
1 subgoal

  h : Prop
  c : Prop
  t : Prop
  f : Prop
  H : (h /\ c /\ t) /\ ~ (~ f /\ t)
  H0 : h /\ c /\ t
  H1 : ~ (~ f /\ t)
  ============================
   f



*)

Section Exercise_7.
Goal forall h c t f:Prop, ((h /\ (c /\ t)) /\ ~(~f /\ t)) -> f.
