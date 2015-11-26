(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_D.

Coq < Goal forall r h s i l k t m:Prop, (((r -> h) /\ (s -> i)) /\ ((~h /\ ~l) -> (r \/ s)) /\ (~h /\ (k -> t)) /\ (h \/ ~l)) -> (i \/ m).
1 subgoal

  ============================
   forall r h s i l k t m : Prop,
   ((r -> h) /\ (s -> i)) /\
   (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l) ->
   i \/ m

Unnamed_thm < intros.
1 subgoal

  r : Prop
  h : Prop
  s : Prop
  i : Prop
  l : Prop
  k : Prop
  t : Prop
  m : Prop
  H : ((r -> h) /\ (s -> i)) /\
      (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  ============================
   i \/ m

Unnamed_thm < elim H.
1 subgoal

  r : Prop
  h : Prop
  s : Prop
  i : Prop
  l : Prop
  k : Prop
  t : Prop
  m : Prop
  H : ((r -> h) /\ (s -> i)) /\
      (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  ============================
   (r -> h) /\ (s -> i) ->
   (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l) -> i \/ m

Unnamed_thm < intro.
1 subgoal

  r : Prop
  h : Prop
  s : Prop
  i : Prop
  l : Prop
  k : Prop
  t : Prop
  m : Prop
  H : ((r -> h) /\ (s -> i)) /\
      (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  H0 : (r -> h) /\ (s -> i)
  ============================
   (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l) -> i \/ m

Unnamed_thm < intro.
1 subgoal

  r : Prop
  h : Prop
  s : Prop
  i : Prop
  l : Prop
  k : Prop
  t : Prop
  m : Prop
  H : ((r -> h) /\ (s -> i)) /\
      (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  H0 : (r -> h) /\ (s -> i)
  H1 : (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  ============================
   i \/ m

Unnamed_thm < left.
1 subgoal

  r : Prop
  h : Prop
  s : Prop
  i : Prop
  l : Prop
  k : Prop
  t : Prop
  m : Prop
  H : ((r -> h) /\ (s -> i)) /\
      (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  H0 : (r -> h) /\ (s -> i)
  H1 : (~ h /\ ~ l -> r \/ s) /\ (~ h /\ (k -> t)) /\ (h \/ ~ l)
  ============================
   i

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
left.
firstorder.

Unnamed_thm is defined

Coq <

*)

Section Exercise_D.
Goal forall r h s i l k t m:Prop, (((r -> h) /\ (s -> i)) /\ ((~h /\ ~l) -> (r \/ s)) /\ (~h /\ (k -> t)) /\ (h \/ ~l)) -> (i \/ m).
intros.
elim H.
intro.
intro.
left.
firstorder.
Qed.
