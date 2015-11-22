(*
Process 65996 exit (max_proofs) Sat Nov 21 21:44:25 2015
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Simplification_A.

Coq < Goal forall f t e:Prop, (~f /\ (t <-> e)) -> ~f.
1 subgoal

  ============================
   forall f t e : Prop, ~ f /\ (t <-> e) -> ~ f

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal

  ============================
   forall f t e : Prop, ~ f /\ (t <-> e) -> ~ f

Unnamed_thm < intros.
1 subgoal

  f : Prop
  t : Prop
  e : Prop
  H : ~ f /\ (t <-> e)
  ============================
   ~ f

Unnamed_thm < apply H.
No more subgoals.

Unnamed_thm < Qed.
info_auto.
intros.
apply H.

Unnamed_thm is defined

Coq <


*)

Section Simplification_A.
Goal forall f t e:Prop, (~f /\ (t <-> e)) -> ~f.
intros.
apply H.
Qed.
