MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section British.

Coq < Goal exists M T:Prop, ((M \/ T) /\ ~(M)) -> T.
1 subgoal
  
  ============================
   exists M T : Prop, (M \/ T) /\ ~ M -> T

Unnamed_thm < intros.
1 subgoal
  
  ============================
   exists M T : Prop, (M \/ T) /\ ~ M -> T

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  ============================
   exists M T : Prop, (M \/ T) /\ ~ M -> T

Unnamed_thm < ^D
MacBook-Air:~ billw$ /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/coqtop
Welcome to Coq 8.4pl5 (October 2014)

Coq < Section British.

Coq < Goal forall M T:Prop, ((M \/ T) /\ ~(M)) -> T.
1 subgoal
  
  ============================
   forall M T : Prop, (M \/ T) /\ ~ M -> T

Unnamed_thm < intros.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  ============================
   T

Unnamed_thm < elim H.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  ============================
   M \/ T -> ~ M -> T

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  ============================
   M \/ T -> ~ M -> T

Unnamed_thm < intro.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  ============================
   ~ M -> T

Unnamed_thm < intro.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  ============================
   T

Unnamed_thm < exact H0.
Toplevel input, characters 6-8:
> exact H0.
>       ^^
Error:
In environment
M : Prop
T : Prop
H : (M \/ T) /\ ~ M
H0 : M \/ T
H1 : ~ M
The term "H0" has type "M \/ T" while it is expected to have type 
"T".

Unnamed_thm < right.
Toplevel input, characters 0-5:
> right.
> ^^^^^
Error: Not an inductive product.

Unnamed_thm < right H0.
Toplevel input, characters 6-8:
> right H0.
>       ^^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < split H0.
Toplevel input, characters 6-8:
> split H0.
>       ^^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < intros.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  ============================
   T

Unnamed_thm < decompose [and] H.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  ============================
   T

Unnamed_thm < left H0.
Toplevel input, characters 5-7:
> left H0.
>      ^^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < right H0.
Toplevel input, characters 6-8:
> right H0.
>       ^^
Syntax error: '.' or '...' expected after [tactic:tactic] (in [proof_mode:subgoal_command]).

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  ============================
   T

Unnamed_thm < elim H0.
2 subgoals
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  ============================
   M -> T

subgoal 2 is:
 T -> T

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
2 subgoals
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  ============================
   M -> T

subgoal 2 is:
 T -> T

Unnamed_thm < 2:info_auto.
(* info auto : *)
 intro.
 assumption.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  ============================
   M -> T

Unnamed_thm < info_auto.
(* info auto : *)
idtac.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  ============================
   M -> T

Unnamed_thm < intro.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  H4 : M
  ============================
   T

Unnamed_thm < apply H1.
Toplevel input, characters 6-8:
> apply H1.
>       ^^
Error: Impossible to unify "~ M" with "T".

Unnamed_thm < apply H.
Toplevel input, characters 6-7:
> apply H.
>       ^
Error: Impossible to unify "(M \/ T) /\ ~ M" with "T".

Unnamed_thm < apply H0.
Toplevel input, characters 6-8:
> apply H0.
>       ^^
Error: Impossible to unify "M \/ T" with "T".

Unnamed_thm < intros.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  H4 : M
  ============================
   T

Unnamed_thm < elim H1.
1 subgoal
  
  M : Prop
  T : Prop
  H : (M \/ T) /\ ~ M
  H0 : M \/ T
  H1 : ~ M
  H2 : M \/ T
  H3 : ~ M
  H4 : M
  ============================
   M

Unnamed_thm < exact H4.
No more subgoals.

Unnamed_thm < Qed.
intros.
elim H.
info_auto.
intro.
intro.
intros.
decompose [and] H.
info_auto.
elim H0.
 info_auto.
 2: info_auto.

 info_auto.
 intro.
 intros.
 elim H1.
 exact H4.

Unnamed_thm is defined

Coq < 
