(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_3.

Coq < Goal forall e d c:Prop, ((e \/ ~(d \/ c)) /\ ((e \/ ~d) -> c)) -> e.
1 subgoal

  ============================
   forall e d c : Prop, (e \/ ~ (d \/ c)) /\ (e \/ ~ d -> c) -> e

Unnamed_thm < intros.
1 subgoal

  e : Prop
  d : Prop
  c : Prop
  H : (e \/ ~ (d \/ c)) /\ (e \/ ~ d -> c)
  ============================
   e

Unnamed_thm < elim H.
1 subgoal

  e : Prop
  d : Prop
  c : Prop
  H : (e \/ ~ (d \/ c)) /\ (e \/ ~ d -> c)
  ============================
   e \/ ~ (d \/ c) -> (e \/ ~ d -> c) -> e

Unnamed_thm < intro.
1 subgoal

  e : Prop
  d : Prop
  c : Prop
  H : (e \/ ~ (d \/ c)) /\ (e \/ ~ d -> c)
  H0 : e \/ ~ (d \/ c)
  ============================
   (e \/ ~ d -> c) -> e

Unnamed_thm < intro.
1 subgoal

  e : Prop
  d : Prop
  c : Prop
  H : (e \/ ~ (d \/ c)) /\ (e \/ ~ d -> c)
  H0 : e \/ ~ (d \/ c)
  H1 : e \/ ~ d -> c
  ============================
   e

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

Section Exercise_3.
Goal forall e d c:Prop, ((e \/ ~(d \/ c)) /\ ((e \/ ~d) -> c)) -> e.
intros.
elim H.
intro.
intro.
firstorder.
Qed.
