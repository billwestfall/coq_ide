(*
Coq < Section Practice_Six.

Coq < Goal forall b s e:Prop, ((b /\ s) -> e) -> ((b /\ ~s) -> ~e).
1 subgoal

  ============================
   forall b s e : Prop, (b /\ s -> e) -> b /\ ~ s -> ~ e

Unnamed_thm < intros.
1 subgoal

  b : Prop
  s : Prop
  e : Prop
  H : b /\ s -> e
  H0 : b /\ ~ s
  ============================
   ~ e

Unnamed_thm < firstorder.
1 subgoal

  b : Prop
  s : Prop
  e : Prop
  H0 : b
  H1 : ~ s
  H : s -> e
  ============================
   ~ e

Unnamed_thm <


*)

Section Practice_Six.
Goal forall b s e:Prop, ((b /\ s) -> e) -> ((b /\ ~s) -> ~e).
