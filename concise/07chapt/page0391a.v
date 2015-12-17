(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_4.

Coq < Goal forall a f l u w x:Prop, ((a /\ (f /\ l)) /\ (a -> (u \/ w)) /\ (f -> (u \/ x))) -> (u \/ (w /\ x)).
1 subgoal

  ============================
   forall a f l u w x : Prop,
   (a /\ f /\ l) /\ (a -> u \/ w) /\ (f -> u \/ x) -> u \/ w /\ x

Unnamed_thm < intros.
1 subgoal

  a : Prop
  f : Prop
  l : Prop
  u : Prop
  w : Prop
  x : Prop
  H : (a /\ f /\ l) /\ (a -> u \/ w) /\ (f -> u \/ x)
  ============================
   u \/ w /\ x

Unnamed_thm < elim H.
1 subgoal

  a : Prop
  f : Prop
  l : Prop
  u : Prop
  w : Prop
  x : Prop
  H : (a /\ f /\ l) /\ (a -> u \/ w) /\ (f -> u \/ x)
  ============================
   a /\ f /\ l -> (a -> u \/ w) /\ (f -> u \/ x) -> u \/ w /\ x

Unnamed_thm < intro.
1 subgoal

  a : Prop
  f : Prop
  l : Prop
  u : Prop
  w : Prop
  x : Prop
  H : (a /\ f /\ l) /\ (a -> u \/ w) /\ (f -> u \/ x)
  H0 : a /\ f /\ l
  ============================
   (a -> u \/ w) /\ (f -> u \/ x) -> u \/ w /\ x

Unnamed_thm < intro.
1 subgoal

  a : Prop
  f : Prop
  l : Prop
  u : Prop
  w : Prop
  x : Prop
  H : (a /\ f /\ l) /\ (a -> u \/ w) /\ (f -> u \/ x)
  H0 : a /\ f /\ l
  H1 : (a -> u \/ w) /\ (f -> u \/ x)
  ============================
   u \/ w /\ x

Unnamed_thm < left.
1 subgoal

  a : Prop
  f : Prop
  l : Prop
  u : Prop
  w : Prop
  x : Prop
  H : (a /\ f /\ l) /\ (a -> u \/ w) /\ (f -> u \/ x)
  H0 : a /\ f /\ l
  H1 : (a -> u \/ w) /\ (f -> u \/ x)
  ============================
   u

Unnamed_thm <

*)
