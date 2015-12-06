MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Practice_05.

Coq < Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c) /\ (a \/ c)) -> ( a \/ b ). 1 subgoal
  
  ============================
   forall a b c : Prop, (a \/ b) /\ (b \/ c) /\ (a \/ c) -> a \/ b

Unnamed_thm < intros.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c)
  ============================
   a \/ b

Unnamed_thm < elim H.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c)
  ============================
   a \/ b -> (b \/ c) /\ (a \/ c) -> a \/ b

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c)
  H0 : a \/ b
  ============================
   (b \/ c) /\ (a \/ c) -> a \/ b

Unnamed_thm < intro.
1 subgoal
  
  a : Prop
  b : Prop
  c : Prop
  H : (a \/ b) /\ (b \/ c) /\ (a \/ c)
  H0 : a \/ b
  H1 : (b \/ c) /\ (a \/ c)
  ============================
   a \/ b

Unnamed_thm < exact H0.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
exact H0.

Unnamed_thm is defined

Coq < 

Section Practice_05.
Goal forall a b c:Prop, ((a \/ b) /\ (b \/ c) /\ (a \/ c)) -> ( a \/ b ).
intros.
elim H.
intro.
intro.
exact H0.
Qed.

