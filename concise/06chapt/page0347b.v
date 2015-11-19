(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Modus_Ponens.

Coq < Goal forall p q:Prop, ((p -> q) /\ (p)) -> q.
1 subgoal

  ============================
   forall p q : Prop, (p -> q) /\ p -> q

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ p
  ============================
   q

Unnamed_thm < elim H.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ p
  ============================
   (p -> q) -> p -> q

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ p
  H0 : p -> q
  ============================
   p -> q

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ p
  H0 : p -> q
  H1 : p
  ============================
   q

Unnamed_thm < decompose [and] H.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ p
  H0 : p -> q
  H1 : p
  H2 : p -> q
  H3 : p
  ============================
   q

Unnamed_thm < apply H0.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ p
  H0 : p -> q
  H1 : p
  H2 : p -> q
  H3 : p
  ============================
   p

Unnamed_thm < exact H3.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
decompose [and] H.
apply H0.
exact H3.

Unnamed_thm is defined

Coq < 

*)

Section Modus_Ponens.
Goal forall p q:Prop, ((p -> q) /\ (p)) -> q.
intros.
elim H.
intro.
intro.
decompose [and] H.
apply H0.
exact H3.
Qed.
