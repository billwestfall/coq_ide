(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Seventeen.

Coq < Goal forall k n p r g b:Prop, (((~k /\ ~n) -> ((~p -> k) /\ (~r -> g))) /\ (k -> n) /\ (~n /\ b) /\ (~p \/ ~r)) -> (g).
1 subgoal

  ============================
   forall k n p r g b : Prop,
   (~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)) /\
   (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r) -> g

Unnamed_thm < intros.
1 subgoal

  k : Prop
  n : Prop
  p : Prop
  r : Prop
  g : Prop
  b : Prop
  H : (~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)) /\
      (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r)
  ============================
   g

Unnamed_thm < elim H.
1 subgoal

  k : Prop
  n : Prop
  p : Prop
  r : Prop
  g : Prop
  b : Prop
  H : (~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)) /\
      (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r)
  ============================
   (~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)) ->
   (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r) -> g

Unnamed_thm < intro.
1 subgoal

  k : Prop
  n : Prop
  p : Prop
  r : Prop
  g : Prop
  b : Prop
  H : (~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)) /\
      (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r)
  H0 : ~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)
  ============================
   (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r) -> g

Unnamed_thm < intro.
1 subgoal

  k : Prop
  n : Prop
  p : Prop
  r : Prop
  g : Prop
  b : Prop
  H : (~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)) /\
      (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r)
  H0 : ~ k /\ ~ n -> (~ p -> k) /\ (~ r -> g)
  H1 : (k -> n) /\ (~ n /\ b) /\ (~ p \/ ~ r)
  ============================
   g

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

Section Exercise_Seventeen.
Goal forall k n p r g b:Prop, (((~k /\ ~n) -> ((~p -> k) /\ (~r -> g))) /\ (k -> n) /\ (~n /\ b) /\ (~p \/ ~r)) -> (g).
intros.
elim H.
intro.
intro.
firstorder.
Qed.
