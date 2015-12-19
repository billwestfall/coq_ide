(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_2.

Coq < Goal forall j k l:Prop, (((j \/ (k /\ l)) /\ ~k)) -> j.
1 subgoal

  ============================
   forall j k l : Prop, (j \/ k /\ l) /\ ~ k -> j

Unnamed_thm < intros.
1 subgoal

  j : Prop
  k : Prop
  l : Prop
  H : (j \/ k /\ l) /\ ~ k
  ============================
   j

Unnamed_thm < elim H.
1 subgoal

  j : Prop
  k : Prop
  l : Prop
  H : (j \/ k /\ l) /\ ~ k
  ============================
   j \/ k /\ l -> ~ k -> j

Unnamed_thm < intro.
1 subgoal

  j : Prop
  k : Prop
  l : Prop
  H : (j \/ k /\ l) /\ ~ k
  H0 : j \/ k /\ l
  ============================
   ~ k -> j

Unnamed_thm < intro.
1 subgoal

  j : Prop
  k : Prop
  l : Prop
  H : (j \/ k /\ l) /\ ~ k
  H0 : j \/ k /\ l
  H1 : ~ k
  ============================
   j

Unnamed_thm < destruct H0.
2 subgoals

  j : Prop
  k : Prop
  l : Prop
  H : (j \/ k /\ l) /\ ~ k
  H0 : j
  H1 : ~ k
  ============================
   j

subgoal 2 is:
 j

Unnamed_thm < exact H0.
1 subgoal

  j : Prop
  k : Prop
  l : Prop
  H : (j \/ k /\ l) /\ ~ k
  H0 : k /\ l
  H1 : ~ k
  ============================
   j

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H0.
 exact H0.
 firstorder .

Unnamed_thm is defined

Coq <

*)

Section Exercise_2.
Goal forall j k l:Prop, (((j \/ (k /\ l)) /\ ~k)) -> j.
intros.
elim H.
intro.
intro.
destruct H0.
 exact H0.
 firstorder.
 Qed.
