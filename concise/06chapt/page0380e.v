(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_C.

Coq < Goal forall s q p r:Prop, (((s -> q) /\ (q -> ~s)) /\ (s \/ q) /\ ~q) -> (p /\ r).
1 subgoal

  ============================
   forall s q p r : Prop,
   ((s -> q) /\ (q -> ~ s)) /\ (s \/ q) /\ ~ q -> p /\ r

Unnamed_thm < intros.
1 subgoal

  s : Prop
  q : Prop
  p : Prop
  r : Prop
  H : ((s -> q) /\ (q -> ~ s)) /\ (s \/ q) /\ ~ q
  ============================
   p /\ r

Unnamed_thm < elim H.
1 subgoal

  s : Prop
  q : Prop
  p : Prop
  r : Prop
  H : ((s -> q) /\ (q -> ~ s)) /\ (s \/ q) /\ ~ q
  ============================
   (s -> q) /\ (q -> ~ s) -> (s \/ q) /\ ~ q -> p /\ r

Unnamed_thm < intro.
1 subgoal

  s : Prop
  q : Prop
  p : Prop
  r : Prop
  H : ((s -> q) /\ (q -> ~ s)) /\ (s \/ q) /\ ~ q
  H0 : (s -> q) /\ (q -> ~ s)
  ============================
   (s \/ q) /\ ~ q -> p /\ r

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
firstorder.

Unnamed_thm is defined

Coq <

*)

Section Exercise_C.
Goal forall s q p r:Prop, (((s -> q) /\ (q -> ~s)) /\ (s \/ q) /\ ~q) -> (p /\ r).
intros.
elim H.
intro.
firstorder.
Qed.
