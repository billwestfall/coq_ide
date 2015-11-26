(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_G.

Coq < Goal forall g s t j:Prop, ((g -> (s /\ t)) /\ ((s \/ t) -> j) /\ g) -> j.
1 subgoal

  ============================
   forall g s t j : Prop, (g -> s /\ t) /\ (s \/ t -> j) /\ g -> j

Unnamed_thm < intros.
1 subgoal

  g : Prop
  s : Prop
  t : Prop
  j : Prop
  H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
  ============================
   j

Unnamed_thm < elim H.
1 subgoal

  g : Prop
  s : Prop
  t : Prop
  j : Prop
  H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
  ============================
   (g -> s /\ t) -> (s \/ t -> j) /\ g -> j

Unnamed_thm < intro.
1 subgoal

  g : Prop
  s : Prop
  t : Prop
  j : Prop
  H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
  H0 : g -> s /\ t
  ============================
   (s \/ t -> j) /\ g -> j

Unnamed_thm < intro.
1 subgoal

  g : Prop
  s : Prop
  t : Prop
  j : Prop
  H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
  H0 : g -> s /\ t
  H1 : (s \/ t -> j) /\ g
  ============================
   j

Unnamed_thm < destruct H1.
1 subgoal

  g : Prop
  s : Prop
  t : Prop
  j : Prop
  H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
  H0 : g -> s /\ t
  H1 : s \/ t -> j
  H2 : g
  ============================
   j

Unnamed_thm < apply H1.
1 subgoal

  g : Prop
  s : Prop
  t : Prop
  j : Prop
  H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
  H0 : g -> s /\ t
  H1 : s \/ t -> j
  H2 : g
  ============================
   s \/ t

   Unnamed_thm < left.
   1 subgoal

     g : Prop
     s : Prop
     t : Prop
     j : Prop
     H : (g -> s /\ t) /\ (s \/ t -> j) /\ g
     H0 : g -> s /\ t
     H1 : s \/ t -> j
     H2 : g
     ============================
      s

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
destruct H1.
apply H1.
left.
firstorder.

Unnamed_thm is defined

Coq <

*)

Section Exercise_G.
Goal forall g s t j:Prop, ((g -> (s /\ t)) /\ ((s \/ t) -> j) /\ g) -> j.
intros.
elim H.
intro.
intro.
destruct H1.
apply H1.
left.
firstorder.
Qed.
