(*
MacBook-Air:elastic_push billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_6.

Coq < Goal forall e n t g:Prop, (((~(~e /\ ~n)) -> t) /\ (g -> (n \/ e))) -> (g -> t).
1 subgoal

  ============================
   forall e n t g : Prop, (~ (~ e /\ ~ n) -> t) /\ (g -> n \/ e) -> g -> t

Unnamed_thm < intros.
1 subgoal

  e : Prop
  n : Prop
  t : Prop
  g : Prop
  H : (~ (~ e /\ ~ n) -> t) /\ (g -> n \/ e)
  H0 : g
  ============================
   t

Unnamed_thm < elim H.
1 subgoal

  e : Prop
  n : Prop
  t : Prop
  g : Prop
  H : (~ (~ e /\ ~ n) -> t) /\ (g -> n \/ e)
  H0 : g
  ============================
   (~ (~ e /\ ~ n) -> t) -> (g -> n \/ e) -> t

Unnamed_thm < intro.
1 subgoal

  e : Prop
  n : Prop
  t : Prop
  g : Prop
  H : (~ (~ e /\ ~ n) -> t) /\ (g -> n \/ e)
  H0 : g
  H1 : ~ (~ e /\ ~ n) -> t
  ============================
   (g -> n \/ e) -> t

Unnamed_thm < intro.
1 subgoal

  e : Prop
  n : Prop
  t : Prop
  g : Prop
  H : (~ (~ e /\ ~ n) -> t) /\ (g -> n \/ e)
  H0 : g
  H1 : ~ (~ e /\ ~ n) -> t
  H2 : g -> n \/ e
  ============================
   t

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <

*)

Section Exercise_6.
Goal forall e n t g:Prop, (((~(~e /\ ~n)) -> t) /\ (g -> (n \/ e))) -> (g -> t).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
