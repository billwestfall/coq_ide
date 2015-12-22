(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_4.

Coq < Goal forall o m s:Prop, (((o \/ m) -> s) /\ ~s) -> ~m.
1 subgoal

  ============================
   forall o m s : Prop, (o \/ m -> s) /\ ~ s -> ~ m

Unnamed_thm < intros.
1 subgoal

  o : Prop
  m : Prop
  s : Prop
  H : (o \/ m -> s) /\ ~ s
  ============================
   ~ m

Unnamed_thm < elim H.
1 subgoal

  o : Prop
  m : Prop
  s : Prop
  H : (o \/ m -> s) /\ ~ s
  ============================
   (o \/ m -> s) -> ~ s -> ~ m

Unnamed_thm < intro.
1 subgoal

  o : Prop
  m : Prop
  s : Prop
  H : (o \/ m -> s) /\ ~ s
  H0 : o \/ m -> s
  ============================
   ~ s -> ~ m

Unnamed_thm < intro.
1 subgoal

  o : Prop
  m : Prop
  s : Prop
  H : (o \/ m -> s) /\ ~ s
  H0 : o \/ m -> s
  H1 : ~ s
  ============================
   ~ m

Unnamed_thm < firstorder.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
intro.
firstorder .

Unnamed_thm is defined

Coq <
*)

Section Exercise_4.
Goal forall o m s:Prop, (((o \/ m) -> s) /\ ~s) -> ~m.
intros.
elim H.
intro.
intro.
firstorder.
Qed.
