(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Eleven.

Coq < Goal forall c n e d p:Prop, (((c -> n) /\ (e)) /\ ((d) \/ (n -> d)) /\ (~d)) -> (~c \/ p).
1 subgoal
  
  ============================
   forall c n e d p : Prop,
   ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d -> ~ c \/ p

Unnamed_thm < intros.
1 subgoal
  
  c : Prop
  n : Prop
  e : Prop
  d : Prop
  p : Prop
  H : ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d
  ============================
   ~ c \/ p

Unnamed_thm < elim H.
1 subgoal
  
  c : Prop
  n : Prop
  e : Prop
  d : Prop
  p : Prop
  H : ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d
  ============================
   (c -> n) /\ e -> (d \/ (n -> d)) /\ ~ d -> ~ c \/ p

Unnamed_thm < intro.
1 subgoal
  
  c : Prop
  n : Prop
  e : Prop
  d : Prop
  p : Prop
  H : ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d
  H0 : (c -> n) /\ e
  ============================
   (d \/ (n -> d)) /\ ~ d -> ~ c \/ p

Unnamed_thm < intro.
1 subgoal
  
  c : Prop
  n : Prop
  e : Prop
  d : Prop
  p : Prop
  H : ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d
  H0 : (c -> n) /\ e
  H1 : (d \/ (n -> d)) /\ ~ d
  ============================
   ~ c \/ p

Unnamed_thm < destruct H0.
1 subgoal
  
  c : Prop
  n : Prop
  e : Prop
  d : Prop
  p : Prop
  H : ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d
  H0 : c -> n
  H2 : e
  H1 : (d \/ (n -> d)) /\ ~ d
  ============================
   ~ c \/ p

Unnamed_thm < left.
1 subgoal
  
  c : Prop
  n : Prop
  e : Prop
  d : Prop
  p : Prop
  H : ((c -> n) /\ e) /\ (d \/ (n -> d)) /\ ~ d
  H0 : c -> n
  H2 : e
  H1 : (d \/ (n -> d)) /\ ~ d
  ============================
   ~ c

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H0.
left.
firstorder  .

Unnamed_thm is defined

Coq <
*)

Section Exercise_Eleven.
Goal forall c n e d p:Prop, (((c -> n) /\ (e)) /\ ((d) \/ (n -> d)) /\ (~d)) -> (~c \/ p).
intros.
elim H.
intro.
intro.
destruct H0.
left.
 firstorder.
 Qed.
