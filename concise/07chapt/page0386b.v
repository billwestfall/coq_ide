(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Replacement_B.

Coq < Goal forall a b c:Prop, (a -> ~(b /\ c)) /\ (a /\ c) -> (~b).
1 subgoal

  ============================
   forall a b c : Prop, (a -> ~ (b /\ c)) /\ a /\ c -> ~ b

Unnamed_thm < intros.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a -> ~ (b /\ c)) /\ a /\ c
  ============================
   ~ b

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a -> ~ (b /\ c)) /\ a /\ c
  ============================
   (a -> ~ (b /\ c)) -> a /\ c -> ~ b

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a -> ~ (b /\ c)) /\ a /\ c
  H0 : a -> ~ (b /\ c)
  ============================
   a /\ c -> ~ b

Unnamed_thm < intro.
1 subgoal

  a : Prop
  b : Prop
  c : Prop
  H : (a -> ~ (b /\ c)) /\ a /\ c
  H0 : a -> ~ (b /\ c)
  H1 : a /\ c
  ============================
   ~ b

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined
*)

Section Replacement_B.
Goal forall a b c:Prop, (a -> ~(b /\ c)) /\ (a /\ c) -> (~b).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
