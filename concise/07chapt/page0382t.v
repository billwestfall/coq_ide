(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Twenty.

Coq < Goal forall w x q r s f g h:Prop, (((w /\ x) -> (q \/ r)) /\ ((s \/ f) /\ (q \/ w)) /\ ((s \/ g) -> (~q -> x)) /\ (q \/ s) /\ (~q /\ h)) -> (r).
1 subgoal

  ============================
   forall w x q r s f g h : Prop,
   (w /\ x -> q \/ r) /\
   ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h ->
   r

Unnamed_thm < intros.
1 subgoal

  w : Prop
  x : Prop
  q : Prop
  r : Prop
  s : Prop
  f : Prop
  g : Prop
  h : Prop
  H : (w /\ x -> q \/ r) /\
      ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h
  ============================
   r

Unnamed_thm < elim H.
1 subgoal

  w : Prop
  x : Prop
  q : Prop
  r : Prop
  s : Prop
  f : Prop
  g : Prop
  h : Prop
  H : (w /\ x -> q \/ r) /\
      ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h
  ============================
   (w /\ x -> q \/ r) ->
   ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h ->
   r

Unnamed_thm < intro.
1 subgoal

  w : Prop
  x : Prop
  q : Prop
  r : Prop
  s : Prop
  f : Prop
  g : Prop
  h : Prop
  H : (w /\ x -> q \/ r) /\
      ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h
  H0 : w /\ x -> q \/ r
  ============================
   ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h ->
   r

Unnamed_thm < intro.
1 subgoal

  w : Prop
  x : Prop
  q : Prop
  r : Prop
  s : Prop
  f : Prop
  g : Prop
  h : Prop
  H : (w /\ x -> q \/ r) /\
      ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h
  H0 : w /\ x -> q \/ r
  H1 : ((s \/ f) /\ (q \/ w)) /\ (s \/ g -> ~ q -> x) /\ (q \/ s) /\ ~ q /\ h
  ============================
   r

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

Section Exercise_Twenty.
Goal forall w x q r s f g h:Prop, (((w /\ x) -> (q \/ r)) /\ ((s \/ f) /\ (q \/ w)) /\ ((s \/ g) -> (~q -> x)) /\ (q \/ s) /\ (~q /\ h)) -> (r).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
