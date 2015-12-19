(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_1.

Coq < Goal forall m p n q:Prop, ((~m -> p) /\ (~n -> q) /\ ~(m /\ n)) -> (p \/ q).
1 subgoal

  ============================
   forall m p n q : Prop, (~ m -> p) /\ (~ n -> q) /\ ~ (m /\ n) -> p \/ q

Unnamed_thm < intros.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H : (~ m -> p) /\ (~ n -> q) /\ ~ (m /\ n)
  ============================
   p \/ q

Unnamed_thm < elim H.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H : (~ m -> p) /\ (~ n -> q) /\ ~ (m /\ n)
  ============================
   (~ m -> p) -> (~ n -> q) /\ ~ (m /\ n) -> p \/ q

Unnamed_thm < intro.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H : (~ m -> p) /\ (~ n -> q) /\ ~ (m /\ n)
  H0 : ~ m -> p
  ============================
   (~ n -> q) /\ ~ (m /\ n) -> p \/ q

Unnamed_thm < intro.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H : (~ m -> p) /\ (~ n -> q) /\ ~ (m /\ n)
  H0 : ~ m -> p
  H1 : (~ n -> q) /\ ~ (m /\ n)
  ============================
   p \/ q

Unnamed_thm < firstorder.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H0 : ~ m -> p
  H : ~ m -> p
  H1 : ~ n -> q
  H2 : ~ n -> q
  H3 : m -> n -> False
  H4 : m -> n -> False
  ============================
   p \/ q

Unnamed_thm < left.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H0 : ~ m -> p
  H : ~ m -> p
  H1 : ~ n -> q
  H2 : ~ n -> q
  H3 : m -> n -> False
  H4 : m -> n -> False
  ============================
   p

Unnamed_thm < apply H0.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H0 : ~ m -> p
  H : ~ m -> p
  H1 : ~ n -> q
  H2 : ~ n -> q
  H3 : m -> n -> False
  H4 : m -> n -> False
  ============================
   ~ m

Unnamed_thm < firstorder.
1 subgoal

  m : Prop
  p : Prop
  n : Prop
  q : Prop
  H0 : ~ m -> p
  H : ~ m -> p
  H1 : ~ n -> q
  H2 : ~ n -> q
  H3 : m -> n -> False
  H4 : m -> n -> False
  ============================
   ~ m

*)
