(*
Coq < Section Exercise_Eight.

Coq < Goal forall d e g h f m:Prop, (((d \/ e) -> (g /\ h)) /\ (g -> ~d) /\ (d /\ f)) -> (m).
1 subgoal
  
  ============================
   forall d e g h f m : Prop, (d \/ e -> g /\ h) /\ (g -> ~ d) /\ d /\ f -> m

Unnamed_thm < intros.
1 subgoal
  
  d : Prop
  e : Prop
  g : Prop
  h : Prop
  f : Prop
  m : Prop
  H : (d \/ e -> g /\ h) /\ (g -> ~ d) /\ d /\ f
  ============================
   m

Unnamed_thm < elim H.
1 subgoal
  
  d : Prop
  e : Prop
  g : Prop
  h : Prop
  f : Prop
  m : Prop
  H : (d \/ e -> g /\ h) /\ (g -> ~ d) /\ d /\ f
  ============================
   (d \/ e -> g /\ h) -> (g -> ~ d) /\ d /\ f -> m

Unnamed_thm < intro.
1 subgoal
  
  d : Prop
  e : Prop
  g : Prop
  h : Prop
  f : Prop
  m : Prop
  H : (d \/ e -> g /\ h) /\ (g -> ~ d) /\ d /\ f
  H0 : d \/ e -> g /\ h
  ============================
   (g -> ~ d) /\ d /\ f -> m

Unnamed_thm < intro.
1 subgoal
  
  d : Prop
  e : Prop
  g : Prop
  h : Prop
  f : Prop
  m : Prop
  H : (d \/ e -> g /\ h) /\ (g -> ~ d) /\ d /\ f
  H0 : d \/ e -> g /\ h
  H1 : (g -> ~ d) /\ d /\ f
  ============================
   m

Unnamed_thm < firstorder.
Proof completed.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder  .

Unnamed_thm is defined

Coq <
*)

Section Exercise_Seven.
Goal forall d e g h f m:Prop, (((d \/ e) -> (g /\ h)) /\ (g -> ~d) /\ (d /\ f)) -> (m).
intros.
elim H.
intro.
intro.
 firstorder.
 Qed.
