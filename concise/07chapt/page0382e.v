(*
Coq <
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Nine.

Coq < Goal forall b f a g e k h:Prop, (((b \/ f) -> (a -> g)) /\ ((b \/ e) -> (g -> k)) /\ (b /\ ~h)) -> (a -> k).
1 subgoal
  
  ============================
   forall b f a g e k h : Prop,
   (b \/ f -> a -> g) /\ (b \/ e -> g -> k) /\ b /\ ~ h -> a -> k

Unnamed_thm < intros.
1 subgoal
  
  b : Prop
  f : Prop
  a : Prop
  g : Prop
  e : Prop
  k : Prop
  h : Prop
  H : (b \/ f -> a -> g) /\ (b \/ e -> g -> k) /\ b /\ ~ h
  H0 : a
  ============================
   k

Unnamed_thm < elim H.
1 subgoal
  
  b : Prop
  f : Prop
  a : Prop
  g : Prop
  e : Prop
  k : Prop
  h : Prop
  H : (b \/ f -> a -> g) /\ (b \/ e -> g -> k) /\ b /\ ~ h
  H0 : a
  ============================
   (b \/ f -> a -> g) -> (b \/ e -> g -> k) /\ b /\ ~ h -> k

Unnamed_thm < intro.
1 subgoal
  
  b : Prop
  f : Prop
  a : Prop
  g : Prop
  e : Prop
  k : Prop
  h : Prop
  H : (b \/ f -> a -> g) /\ (b \/ e -> g -> k) /\ b /\ ~ h
  H0 : a
  H1 : b \/ f -> a -> g
  ============================
   (b \/ e -> g -> k) /\ b /\ ~ h -> k

Unnamed_thm < intro.
1 subgoal
  
  b : Prop
  f : Prop
  a : Prop
  g : Prop
  e : Prop
  k : Prop
  h : Prop
  H : (b \/ f -> a -> g) /\ (b \/ e -> g -> k) /\ b /\ ~ h
  H0 : a
  H1 : b \/ f -> a -> g
  H2 : (b \/ e -> g -> k) /\ b /\ ~ h
  ============================
   k

Unnamed_thm < destruct H2.
1 subgoal
  
  b : Prop
  f : Prop
  a : Prop
  g : Prop
  e : Prop
  k : Prop
  h : Prop
  H : (b \/ f -> a -> g) /\ (b \/ e -> g -> k) /\ b /\ ~ h
  H0 : a
  H1 : b \/ f -> a -> g
  H2 : b \/ e -> g -> k
  H3 : b /\ ~ h
  ============================
   k

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H2.
firstorder  .

Unnamed_thm is defined

Coq <
*)

Section Exercise_Nine.
Goal forall d e g h f m:Prop, (((d \/ e) -> (g /\ h)) /\ (g -> ~d) /\ (d /\ f)) -> (m).
intros.
elim H.
intro.
intro.
destruct H2.
 firstorder.
 Qed.
