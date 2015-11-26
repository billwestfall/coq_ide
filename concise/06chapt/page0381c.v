(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_E.

Coq < Goal forall m q r t:Prop, ((~m -> q) /\ (r -> ~t) /\ (~m \/ r)) -> (q \/ ~t).
1 subgoal

  ============================
   forall m q r t : Prop, (~ m -> q) /\ (r -> ~ t) /\ (~ m \/ r) -> q \/ ~ t

Unnamed_thm < intros.
1 subgoal

  m : Prop
  q : Prop
  r : Prop
  t : Prop
  H : (~ m -> q) /\ (r -> ~ t) /\ (~ m \/ r)
  ============================
   q \/ ~ t

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  q : Prop
  r : Prop
  t : Prop
  H : (~ m -> q) /\ (r -> ~ t) /\ (~ m \/ r)
  ============================
   (~ m -> q) -> (r -> ~ t) /\ (~ m \/ r) -> q \/ ~ t

Unnamed_thm < intro.
1 subgoal

  m : Prop
  q : Prop
  r : Prop
  t : Prop
  H : (~ m -> q) /\ (r -> ~ t) /\ (~ m \/ r)
  H0 : ~ m -> q
  ============================
   (r -> ~ t) /\ (~ m \/ r) -> q \/ ~ t

Unnamed_thm < intro.
1 subgoal

  m : Prop
  q : Prop
  r : Prop
  t : Prop
  H : (~ m -> q) /\ (r -> ~ t) /\ (~ m \/ r)
  H0 : ~ m -> q
  H1 : (r -> ~ t) /\ (~ m \/ r)
  ============================
   q \/ ~ t

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

Section Exercise_E.
Goal forall m q r t:Prop, ((~m -> q) /\ (r -> ~t) /\ (~m \/ r)) -> (q \/ ~t).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
