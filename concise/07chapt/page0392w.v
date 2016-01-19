(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_24.

Coq < Goal forall m n o p:Prop, (((m /\ n) \/ (o /\ p)) /\ ((n \/ o) -> ~p)) -> n.
1 subgoal

  ============================
   forall m n o p : Prop, (m /\ n \/ o /\ p) /\ (n \/ o -> ~ p) -> n

Unnamed_thm < intros.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  p : Prop
  H : (m /\ n \/ o /\ p) /\ (n \/ o -> ~ p)
  ============================
   n

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  p : Prop
  H : (m /\ n \/ o /\ p) /\ (n \/ o -> ~ p)
  ============================
   m /\ n \/ o /\ p -> (n \/ o -> ~ p) -> n

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  p : Prop
  H : (m /\ n \/ o /\ p) /\ (n \/ o -> ~ p)
  H0 : m /\ n \/ o /\ p
  ============================
   (n \/ o -> ~ p) -> n

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  p : Prop
  H : (m /\ n \/ o /\ p) /\ (n \/ o -> ~ p)
  H0 : m /\ n \/ o /\ p
  H1 : n \/ o -> ~ p
  ============================
   n

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
tauto.

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_24.
Goal forall m n o p:Prop, (((m /\ n) \/ (o /\ p)) /\ ((n \/ o) -> ~p)) -> n.
intros.
elim H.
intro.
intro.
 tauto.
 Qed.
