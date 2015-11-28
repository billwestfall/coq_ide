(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_A.

Coq < Goal forall f x p t:Prop, (((~f \/ x) -> (p \/ t)) /\ (f -> p) /\ ~p) -> t.
1 subgoal

  ============================
   forall f x p t : Prop, (~ f \/ x -> p \/ t) /\ (f -> p) /\ ~ p -> t

Unnamed_thm < intros.
1 subgoal

  f : Prop
  x : Prop
  p : Prop
  t : Prop
  H : (~ f \/ x -> p \/ t) /\ (f -> p) /\ ~ p
  ============================
   t

Unnamed_thm < elim H.
1 subgoal

  f : Prop
  x : Prop
  p : Prop
  t : Prop
  H : (~ f \/ x -> p \/ t) /\ (f -> p) /\ ~ p
  ============================
   (~ f \/ x -> p \/ t) -> (f -> p) /\ ~ p -> t

Unnamed_thm < intro.
1 subgoal

  f : Prop
  x : Prop
  p : Prop
  t : Prop
  H : (~ f \/ x -> p \/ t) /\ (f -> p) /\ ~ p
  H0 : ~ f \/ x -> p \/ t
  ============================
   (f -> p) /\ ~ p -> t

Unnamed_thm < intro.
1 subgoal

  f : Prop
  x : Prop
  p : Prop
  t : Prop
  H : (~ f \/ x -> p \/ t) /\ (f -> p) /\ ~ p
  H0 : ~ f \/ x -> p \/ t
  H1 : (f -> p) /\ ~ p
  ============================
   t

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder.

Unnamed_thm is defined

Coq <

*)

Section Exercise_A.
Goal forall f x p t:Prop, (((~f \/ x) -> (p \/ t)) /\ (f -> p) /\ ~p) -> t.
intros.
elim H.
intro.
intro.
firstorder.
Qed.
