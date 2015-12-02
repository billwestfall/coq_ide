(*
Coq < Section Exercise_Six.

Coq < Goal forall n b o c q:Prop, (((n -> b) /\ (o -> c)) /\ (q -> (n \/ o)) /\ q) -> (b \/ c).
1 subgoal

  ============================
   forall n b o c q : Prop,
   ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q -> b \/ c

Unnamed_thm < intros.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  ============================
   b \/ c

Unnamed_thm < intro.
Toplevel input, characters 0-5:
> intro.
> ^^^^^
Error: No product even after head-reduction.

Unnamed_thm < elim H.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  ============================
   (n -> b) /\ (o -> c) -> (q -> n \/ o) /\ q -> b \/ c

Unnamed_thm < intro.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : (n -> b) /\ (o -> c)
  ============================
   (q -> n \/ o) /\ q -> b \/ c

Unnamed_thm < intro.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : (n -> b) /\ (o -> c)
  H1 : (q -> n \/ o) /\ q
  ============================
   b \/ c

Unnamed_thm < left.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : (n -> b) /\ (o -> c)
  H1 : (q -> n \/ o) /\ q
  ============================
   b

Unnamed_thm < firstorder.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H3 : q
  H0 : n -> b
  H5 : q
  H : n -> b
  H1 : o
  H6 : c
  H4 : c
  H2 : o
  ============================
   b

Unnamed_thm < firstorder.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H3 : q
  H0 : n -> b
  H5 : q
  H : n -> b
  H1 : o
  H6 : c
  H4 : c
  H2 : o
  ============================
   b

Unnamed_thm < ^D
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section Exercise_Six.

Coq < Goal forall n b o c q:Prop, (((n -> b) /\ (o -> c)) /\ (q -> (n \/ o)) /\ q) -> (b \/ c).
1 subgoal

  ============================
   forall n b o c q : Prop,
   ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q -> b \/ c

Unnamed_thm < intros.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  ============================
   b \/ c

Unnamed_thm < elim H.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  ============================
   (n -> b) /\ (o -> c) -> (q -> n \/ o) /\ q -> b \/ c

Unnamed_thm < intro.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : (n -> b) /\ (o -> c)
  ============================
   (q -> n \/ o) /\ q -> b \/ c

Unnamed_thm < intro.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : (n -> b) /\ (o -> c)
  H1 : (q -> n \/ o) /\ q
  ============================
   b \/ c

Unnamed_thm < destruct H0.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : (q -> n \/ o) /\ q
  ============================
   b \/ c

Unnamed_thm < apply or_introl.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : (q -> n \/ o) /\ q
  ============================
   b

Unnamed_thm < apply H0.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : (q -> n \/ o) /\ q
  ============================
   n

Unnamed_thm < destruct H1.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : q -> n \/ o
  H3 : q
  ============================
   n

Unnamed_thm < apply H1.
Toplevel input, characters 6-8:
> apply H1.
>       ^^
Error: Impossible to unify "n \/ o" with "n".

Unnamed_thm < decompose [or] H1.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : q -> n \/ o
  H3 : q
  ============================
   n

Unnamed_thm < destruct H1.
3 subgoals

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H3 : q
  ============================
   q

subgoal 2 is:
 n
subgoal 3 is:
 n

Unnamed_thm < exact H3.
2 subgoals

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : n
  H3 : q
  ============================
   n

subgoal 2 is:
 n

Unnamed_thm < exact H1.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   n

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : ((n -> b) /\ (o -> c)) /\ (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   n

Unnamed_thm < destruct H.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : (n -> b) /\ (o -> c)
  H4 : (q -> n \/ o) /\ q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   n

Unnamed_thm < destruct H4.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : (n -> b) /\ (o -> c)
  H4 : q -> n \/ o
  H5 : q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   n

Unnamed_thm < destruct H4.
3 subgoals

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : (n -> b) /\ (o -> c)
  H5 : q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   q

subgoal 2 is:
 n
subgoal 3 is:
 n

Unnamed_thm < exact H3.
2 subgoals

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : (n -> b) /\ (o -> c)
  H4 : n
  H5 : q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   n

subgoal 2 is:
 n

Unnamed_thm < exact H4.
1 subgoal

  n : Prop
  b : Prop
  o : Prop
  c : Prop
  q : Prop
  H : (n -> b) /\ (o -> c)
  H4 : o
  H5 : q
  H0 : n -> b
  H2 : o -> c
  H1 : o
  H3 : q
  ============================
   n
*)
