(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_2.

Coq < Goal forall k p q t:Prop, (((k /\ p) \/ (k /\ q)) /\ (p -> ~k)) -> (q \/ t).
1 subgoal

  ============================
   forall k p q t : Prop, (k /\ p \/ k /\ q) /\ (p -> ~ k) -> q \/ t

Unnamed_thm < intros.
1 subgoal

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  ============================
   q \/ t

Unnamed_thm < elim H.
1 subgoal

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  ============================
   k /\ p \/ k /\ q -> (p -> ~ k) -> q \/ t

Unnamed_thm < intro.
1 subgoal

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  H0 : k /\ p \/ k /\ q
  ============================
   (p -> ~ k) -> q \/ t

Unnamed_thm < intro.
1 subgoal

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  H0 : k /\ p \/ k /\ q
  H1 : p -> ~ k
  ============================
   q \/ t

Unnamed_thm < left.
1 subgoal

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  H0 : k /\ p \/ k /\ q
  H1 : p -> ~ k
  ============================
   q

Unnamed_thm < destruct H0.
2 subgoals

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  H0 : k /\ p
  H1 : p -> ~ k
  ============================
   q

subgoal 2 is:
 q

Unnamed_thm < firstorder.
1 subgoal

  k : Prop
  p : Prop
  q : Prop
  t : Prop
  H : (k /\ p \/ k /\ q) /\ (p -> ~ k)
  H0 : k /\ q
  H1 : p -> ~ k
  ============================
   q

Unnamed_thm < apply H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
left.
destruct H0.
 firstorder .

 apply H0.

Unnamed_thm is defined

Coq <
*)

Section Exercise_2.
Goal forall k p q t:Prop, (((k /\ p) \/ (k /\ q)) /\ (p -> ~k)) -> (q \/ t).
intros.
elim H.
intro.
intro.
left.
destruct H0.
 firstorder .
 apply H0.
Qed.
