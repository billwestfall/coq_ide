(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Replacement_C.

Coq < Goal forall g h j k l:Prop, (((g /\ h) \/ (g /\ j)) /\ ((g \/ k) -> l)) -> l.
1 subgoal

  ============================
   forall g h j k l : Prop, (g /\ h \/ g /\ j) /\ (g \/ k -> l) -> l

Unnamed_thm < intros.
1 subgoal

  g : Prop
  h : Prop
  j : Prop
  k : Prop
  l : Prop
  H : (g /\ h \/ g /\ j) /\ (g \/ k -> l)
  ============================
   l

Unnamed_thm < elim H.
1 subgoal

  g : Prop
  h : Prop
  j : Prop
  k : Prop
  l : Prop
  H : (g /\ h \/ g /\ j) /\ (g \/ k -> l)
  ============================
   g /\ h \/ g /\ j -> (g \/ k -> l) -> l

Unnamed_thm < intro.
1 subgoal

  g : Prop
  h : Prop
  j : Prop
  k : Prop
  l : Prop
  H : (g /\ h \/ g /\ j) /\ (g \/ k -> l)
  H0 : g /\ h \/ g /\ j
  ============================
   (g \/ k -> l) -> l

Unnamed_thm < intro.
1 subgoal

  g : Prop
  h : Prop
  j : Prop
  k : Prop
  l : Prop
  H : (g /\ h \/ g /\ j) /\ (g \/ k -> l)
  H0 : g /\ h \/ g /\ j
  H1 : g \/ k -> l
  ============================
   l

Unnamed_thm < apply H1.
1 subgoal

  g : Prop
  h : Prop
  j : Prop
  k : Prop
  l : Prop
  H : (g /\ h \/ g /\ j) /\ (g \/ k -> l)
  H0 : g /\ h \/ g /\ j
  H1 : g \/ k -> l
  ============================
   g \/ k

Unnamed_thm < left.
1 subgoal

  g : Prop
  h : Prop
  j : Prop
  k : Prop
  l : Prop
  H : (g /\ h \/ g /\ j) /\ (g \/ k -> l)
  H0 : g /\ h \/ g /\ j
  H1 : g \/ k -> l
  ============================
   g

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
apply H1.
left.
firstorder .

Unnamed_thm is defined

Coq <

*)

Section Replacement_C.
Goal forall g h j k l:Prop, (((g /\ h) \/ (g /\ j)) /\ ((g \/ k) -> l)) -> l.
intros.
elim H.
intro.
intro.
apply H1.
left.
firstorder.
Qed.
