MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Destructive_Dilemma.

Coq < Goal forall p q r s:Prop, (((p -> q) /\ (r -> s)) /\ (~q \/ ~s)) -> (~p \/ ~r).
1 subgoal

  ============================
   forall p q r s : Prop,
   ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s) -> ~ p \/ ~ r

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  ============================
   ~ p \/ ~ r

Unnamed_thm < unfold not.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  ============================
   (p -> False) \/ (r -> False)

Unnamed_thm < intro.
Toplevel input, characters 0-5:
> intro.
> ^^^^^
Error: No product even after head-reduction.

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  ============================
   (p -> False) \/ (r -> False)

Unnamed_thm < elim H>
Unnamed_thm < elim H.
Toplevel input, characters 6-7:
> elim H>
>       ^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < elim H.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  ============================
   (p -> q) /\ (r -> s) -> ~ q \/ ~ s -> (p -> False) \/ (r -> False)

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  ============================
   ~ q \/ ~ s -> (p -> False) \/ (r -> False)

Unnamed_thm < intro.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  H1 : ~ q \/ ~ s
  ============================
   (p -> False) \/ (r -> False)

Unnamed_thm < left.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  H1 : ~ q \/ ~ s
  ============================
   p -> False

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
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < left H1.
Toplevel input, characters 5-7:
> left H1.
>      ^^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < apply or_introl H1.
Toplevel input, characters 16-18:
> apply or_introl H1.
>                 ^^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < apply H1.
Toplevel input, characters 6-8:
> apply H1.
>       ^^
Error: Impossible to unify "~ q \/ ~ s" with "False".

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < apply H2.
Toplevel input, characters 6-8:
> apply H2.
>       ^^
Error: Impossible to unify "p" with "False".

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H0 : (p -> q) /\ (r -> s)
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < destruct H0 as [H3 H4].
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H : ((p -> q) /\ (r -> s)) /\ (~ q \/ ~ s)
  H3 : p -> q
  H4 : r -> s
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < destruct H as [H5 H6].
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H5 : (p -> q) /\ (r -> s)
  H6 : ~ q \/ ~ s
  H3 : p -> q
  H4 : r -> s
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < apply H1.
Toplevel input, characters 6-8:
> apply H1.
>       ^^
Error: Impossible to unify "~ q \/ ~ s" with "False".

Unnamed_thm < apply H5.
Toplevel input, characters 6-8:
> apply H5.
>       ^^
Error: Impossible to unify "(p -> q) /\ (r -> s)" with "False".

Unnamed_thm < intros.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H5 : (p -> q) /\ (r -> s)
  H6 : ~ q \/ ~ s
  H3 : p -> q
  H4 : r -> s
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal

  p : Prop
  q : Prop
  r : Prop
  s : Prop
  H5 : (p -> q) /\ (r -> s)
  H6 : ~ q \/ ~ s
  H3 : p -> q
  H4 : r -> s
  H1 : ~ q \/ ~ s
  H2 : p
  ============================
   False

Unnamed_thm <
