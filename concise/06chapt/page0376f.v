(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Addition_C.

Coq < Goal forall w z a m o:Prop, (w <-> z) -> ((w <-> z) \/ (a -> (m -> o))).
1 subgoal

  ============================
   forall w z a m o : Prop, (w <-> z) -> (w <-> z) \/ (a -> m -> o)

Unnamed_thm < intros.
1 subgoal

  w : Prop
  z : Prop
  a : Prop
  m : Prop
  o : Prop
  H : w <-> z
  ============================
   (w <-> z) \/ (a -> m -> o)

Unnamed_thm < left.
1 subgoal

  w : Prop
  z : Prop
  a : Prop
  m : Prop
  o : Prop
  H : w <-> z
  ============================
   w <-> z

Unnamed_thm < exact H.
No more subgoals.

Unnamed_thm < Qed.
intros.
left.
exact H.

Unnamed_thm is defined

Coq < 

*)

Section Addition_C.
Goal forall w z a m o:Prop, (w <-> z) -> ((w <-> z) \/ (a -> (m -> o))).
intros.
left.
exact H.
Qed.
