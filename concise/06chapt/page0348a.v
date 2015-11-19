(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Modus_Tollens.

Coq < Goal forall p q:Prop, ((p -> q) /\ ~(q)) -> ~p.
1 subgoal

  ============================
   forall p q : Prop, (p -> q) /\ ~ q -> ~ p

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  ============================
   ~ p

Unnamed_thm < elim H.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  ============================
   (p -> q) -> ~ q -> ~ p

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  H0 : p -> q
  ============================
   ~ q -> ~ p

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  H0 : p -> q
  H1 : ~ q
  ============================
   ~ p

Unnamed_thm < unfold not.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  H0 : p -> q
  H1 : ~ q
  ============================
   p -> False

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  H0 : p -> q
  H1 : ~ q
  H2 : p
  ============================
   False

Unnamed_thm < apply H1.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  H0 : p -> q
  H1 : ~ q
  H2 : p
  ============================
   q

Unnamed_thm < apply H0.
1 subgoal

  p : Prop
  q : Prop
  H : (p -> q) /\ ~ q
  H0 : p -> q
  H1 : ~ q
  H2 : p
  ============================
   p

Unnamed_thm < exact H2.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
unfold not.
intro.
apply H1.
apply H0.
exact H2.

Unnamed_thm is defined

Coq < 

*)

Section Modus_Tollens.
Goal forall p q:Prop, ((p -> q) /\ ~(q)) -> ~p.
intros.
elim H.
intro.
intro.
unfold not.
intro.
apply H1.
apply H0.
exact H2.
Qed.
