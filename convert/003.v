MacBook-Air:coq_ide billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Predicate.

Coq < Require Import Classical.

Coq < Variables F C : Prop.
F is assumed
C is assumed

Coq < Goal forall F C:Prop, (F -> ~C) -> ~(F /\ C).
1 subgoal
  
  F : Prop
  C : Prop
  ============================
   forall F0 C0 : Prop, (F0 -> ~ C0) -> ~ (F0 /\ C0)

Unnamed_thm < intros.
1 subgoal
  
  F : Prop
  C : Prop
  F0 : Prop
  C0 : Prop
  H : F0 -> ~ C0
  ============================
   ~ (F0 /\ C0)

Unnamed_thm < intro.
1 subgoal
  
  F : Prop
  C : Prop
  F0 : Prop
  C0 : Prop
  H : F0 -> ~ C0
  H0 : F0 /\ C0
  ============================
   False

Unnamed_thm < tauto.
No more subgoals.

Unnamed_thm < Qed.
intros.
intro.
tauto.

Unnamed_thm is defined
