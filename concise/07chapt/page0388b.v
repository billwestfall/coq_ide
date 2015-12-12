(*
MacBook-Air:elastic_push billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Replacement_D.

Coq < Goal forall m n o:Prop, ((m \/ (n \/ o)) /\ (~o)) -> (m \/ n).
1 subgoal

  ============================
   forall m n o : Prop, (m \/ n \/ o) /\ ~ o -> m \/ n

Unnamed_thm < intros.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  H : (m \/ n \/ o) /\ ~ o
  ============================
   m \/ n

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  H : (m \/ n \/ o) /\ ~ o
  ============================
   m \/ n \/ o -> ~ o -> m \/ n

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  H : (m \/ n \/ o) /\ ~ o
  H0 : m \/ n \/ o
  ============================
   ~ o -> m \/ n

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  o : Prop
  H : (m \/ n \/ o) /\ ~ o
  H0 : m \/ n \/ o
  H1 : ~ o
  ============================
   m \/ n

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

Section Replacement_D.
Goal forall m n o:Prop, ((m \/ (n \/ o)) /\ (~o)) -> (m \/ n).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
