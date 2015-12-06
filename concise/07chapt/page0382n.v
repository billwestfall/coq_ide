(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Fifteen.

Coq < Goal forall m n f g d c b h:Prop, (((m \/ n) -> (f -> g)) /\ (d -> ~c) /\ (~c -> b) /\ (m /\ h) /\ (d \/ f)) -> (b \/ g).
1 subgoal

  ============================
   forall m n f g d c b h : Prop,
   (m \/ n -> f -> g) /\ (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f) ->
   b \/ g

Unnamed_thm < intros.
1 subgoal

  m : Prop
  n : Prop
  f : Prop
  g : Prop
  d : Prop
  c : Prop
  b : Prop
  h : Prop
  H : (m \/ n -> f -> g) /\ (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f)
  ============================
   b \/ g

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  n : Prop
  f : Prop
  g : Prop
  d : Prop
  c : Prop
  b : Prop
  h : Prop
  H : (m \/ n -> f -> g) /\ (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f)
  ============================
   (m \/ n -> f -> g) ->
   (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f) -> b \/ g

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  f : Prop
  g : Prop
  d : Prop
  c : Prop
  b : Prop
  h : Prop
  H : (m \/ n -> f -> g) /\ (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f)
  H0 : m \/ n -> f -> g
  ============================
   (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f) -> b \/ g

Unnamed_thm < intro.
1 subgoal

  m : Prop
  n : Prop
  f : Prop
  g : Prop
  d : Prop
  c : Prop
  b : Prop
  h : Prop
  H : (m \/ n -> f -> g) /\ (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f)
  H0 : m \/ n -> f -> g
  H1 : (d -> ~ c) /\ (~ c -> b) /\ (m /\ h) /\ (d \/ f)
  ============================
   b \/ g

Unnamed_thm <

*)
