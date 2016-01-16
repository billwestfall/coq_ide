(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Require Import Classical.

Coq < Section Exercise_22.

Coq < Goal forall q c b t h:Prop, ((~q -> (c /\ b)) /\ (~t -> (b /\ h)) /\ ~(q /\ t)) -> b.
1 subgoal

  ============================
   forall q c b t h : Prop,
   (~ q -> c /\ b) /\ (~ t -> b /\ h) /\ ~ (q /\ t) -> b

Unnamed_thm < intros.
1 subgoal

  q : Prop
  c : Prop
  b : Prop
  t : Prop
  h : Prop
  H : (~ q -> c /\ b) /\ (~ t -> b /\ h) /\ ~ (q /\ t)
  ============================
   b

Unnamed_thm < elim H.
1 subgoal

  q : Prop
  c : Prop
  b : Prop
  t : Prop
  h : Prop
  H : (~ q -> c /\ b) /\ (~ t -> b /\ h) /\ ~ (q /\ t)
  ============================
   (~ q -> c /\ b) -> (~ t -> b /\ h) /\ ~ (q /\ t) -> b

Unnamed_thm < intro.
1 subgoal

  q : Prop
  c : Prop
  b : Prop
  t : Prop
  h : Prop
  H : (~ q -> c /\ b) /\ (~ t -> b /\ h) /\ ~ (q /\ t)
  H0 : ~ q -> c /\ b
  ============================
   (~ t -> b /\ h) /\ ~ (q /\ t) -> b

Unnamed_thm < intro.
1 subgoal

  q : Prop
  c : Prop
  b : Prop
  t : Prop
  h : Prop
  H : (~ q -> c /\ b) /\ (~ t -> b /\ h) /\ ~ (q /\ t)
  H0 : ~ q -> c /\ b
  H1 : (~ t -> b /\ h) /\ ~ (q /\ t)
  ============================
   b

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
tauto.

Unnamed_thm is defined

Coq <

*)

Require Import Classical.
Section Exercise_22.
Goal forall q c b t h:Prop, ((~q -> (c /\ b)) /\ (~t -> (b /\ h)) /\ ~(q /\ t)) -> b.
intros.
elim H.
intro.
intro.
 tauto.
 Qed.
