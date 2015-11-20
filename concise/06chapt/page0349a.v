(*
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Constructive_Dilemma.

Coq < Goal forall p q r s:Prop, (((p -> q) /\ (r ->s)) /\ (p \/ r)) -> (q \/ s).
1 subgoal

  ============================
   forall p q r s : Prop, ((p -> q) /\ (r -> s)) /\ (p \/ r) -> q \/ s

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  ============================
   q \/ s

Unnamed_thm < elim H.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  ============================
   (p -> q) /\ (r -> s) -> p \/ r -> q \/ s

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  ============================
   p \/ r -> q \/ s

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  ============================
   p \/ r -> q \/ s

Unnamed_thm < apply H0.
Toplevel input, characters 6-8:
> apply H0.
>       ^^
Error: Applied theorem has not enough premisses.

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  ============================
   q \/ s

Unnamed_thm < intro.
Toplevel input, characters 0-5:
> intro.
> ^^^^^
Error: No product even after head-reduction.

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  ============================
   q \/ s

Unnamed_thm < transitivity.
Toplevel input, characters 12-13:
> transitivity.
>             ^
Syntax error: [constr:constr] expected after 'transitivity' (in [tactic:simple_tactic]).

Unnamed_thm < transitivity H0.
Toplevel input, characters 0-15:
> transitivity H0.
> ^^^^^^^^^^^^^^^
Error:
Tactic failure: The relation or is not a declared transitive relation. Maybe you need to require the Setoid library.

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  ============================
   q \/ s

Unnamed_thm < elim H0.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  ============================
   (p -> q) -> (r -> s) -> q \/ s

Unnamed_thm < apply H1.
Toplevel input, characters 6-8:
> apply H1.
>       ^^
Error: Applied theorem has not enough premisses.

Unnamed_thm < elim H1.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  ============================
   p -> (p -> q) -> (r -> s) -> q \/ s

subgoal 2 is:
 r -> (p -> q) -> (r -> s) -> q \/ s

Unnamed_thm < intro.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  ============================
   (p -> q) -> (r -> s) -> q \/ s

subgoal 2 is:
 r -> (p -> q) -> (r -> s) -> q \/ s

Unnamed_thm < intro.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  ============================
   (r -> s) -> q \/ s

subgoal 2 is:
 r -> (p -> q) -> (r -> s) -> q \/ s

Unnamed_thm < intro.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

subgoal 2 is:
 r -> (p -> q) -> (r -> s) -> q \/ s

Unnamed_thm < 2:intro.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

subgoal 2 is:
 (p -> q) -> (r -> s) -> q \/ s

Unnamed_thm < 2:intro.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

subgoal 2 is:
 (r -> s) -> q \/ s

Unnamed_thm < 2:intro.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

subgoal 2 is:
 q \/ s

Unnamed_thm < apply H3.
Toplevel input, characters 6-8:
> apply H3.
>       ^^
Error: Impossible to unify "q" with "q \/ s".

Unnamed_thm < destruct H as [H5 H6].
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H5 : (p -> q) /\ (r -> s)
  H6 : p \/ r
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

subgoal 2 is:
 q \/ s

Unnamed_thm < destruct H0.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H5 : (p -> q) /\ (r -> s)
  H6 : p \/ r
  H : p -> q
  H0 : r -> s
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

subgoal 2 is:
 q \/ s

Unnamed_thm < left.
2 subgoals

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H5 : (p -> q) /\ (r -> s)
  H6 : p \/ r
  H : p -> q
  H0 : r -> s
  H1 : p \/ r
  H2 : p
  H3 : p -> q
  H4 : r -> s
  ============================
   q

subgoal 2 is:
 q \/ s

Unnamed_thm < info_auto.
(* info auto : *)
 apply H.
  assumption.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (p \/ r)
  H0 : (p -> q) /\ (r -> s)
  H1 : p \/ r
  H2 : r
  H3 : p -> q
  H4 : r -> s
  ============================
   q \/ s

Unnamed_thm < apply H3.
Toplevel input, characters 6-8:
> apply H3.
>       ^^
Error: Impossible to unify "q" with "q \/ s".

Unnamed_thm < info_auto.
(* info auto : *)
 apply or_intror.
  apply H4.
   assumption.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
intro.
info_auto.
intros.
info_auto.
intros.
elim H0.
elim H1.
 intro.
 intro.
 intro.
 2: intro.
 2: intro.
 2: intro.
 destruct H as (H5, H6).
 destruct H0.
 left.
 info_auto.

 info_auto.

Unnamed_thm is defined

Coq <


*)

Section Constructive_Dilemma.
Goal forall p q r s:Prop, (((p -> q) /\ (r ->s)) /\ (p \/ r)) -> (q \/ s).
intros.
elim H.
intro.
info_auto.
intros.
info_auto.
intros.
elim H0.
elim H1.
 intro.
 intro.
 intro.
 2: intro.
 2: intro.
 2: intro.
 destruct H as (H5, H6).
 destruct H0.
 left.
 info_auto.
 info_auto.
Qed.
