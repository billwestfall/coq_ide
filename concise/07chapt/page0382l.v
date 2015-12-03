(*
(precise)administrator@localhost:~$ coqtop
Welcome to Coq 8.3pl4 (April 2012)

Coq < Section Exercise_Thirteen.

Coq < Goal forall h t r e f d:Prop, (((~h) -> (~t -> r)) /\ (h \/ (e -> f)) /\ (~t \/ e) /\ (~h /\ d) -> (r /\ f).
Toplevel input, characters 107-108:
> Goal forall h t r e f d:Prop, (((~h) -> (~t -> r)) /\ (h \/ (e -> f)) /\ (~t \/ e) /\ (~h /\ d) -> (r /\ f).
>                                                                                                            ^
Syntax error: ',' or ')' expected after [constr:operconstr level 200] (in [constr:operconstr]).

Coq < Goal forall h t r e f d:Prop, (((~h) -> (~t -> r)) /\ (h \/ (e -> f)) /\ (~t \/ e) /\ (~h /\ d)) -> (r /\ f).
1 subgoal
  
  ============================
   forall h t r e f d : Prop,
   (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d -> r /\ f

Unnamed_thm < intros.
1 subgoal
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  ============================
   r /\ f

Unnamed_thm < elim H.
1 subgoal
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  ============================
   (~ h -> ~ t -> r) -> (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d -> r /\ f

Unnamed_thm < intro.
1 subgoal
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  H0 : ~ h -> ~ t -> r
  ============================
   (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d -> r /\ f

Unnamed_thm < intro.
1 subgoal
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  H0 : ~ h -> ~ t -> r
  H1 : (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  ============================
   r /\ f

Unnamed_thm < apply conj.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  H0 : ~ h -> ~ t -> r
  H1 : (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  ============================
   r

subgoal 2 is:
 f

Unnamed_thm < apply H0.
3 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  H0 : ~ h -> ~ t -> r
  H1 : (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  ============================
   ~ h

subgoal 2 is:
 ~ t
subgoal 3 is:
 f

Unnamed_thm < firstorder.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H : (~ h -> ~ t -> r) /\ (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  H0 : ~ h -> ~ t -> r
  H1 : (h \/ (e -> f)) /\ (~ t \/ e) /\ ~ h /\ d
  ============================
   ~ t

subgoal 2 is:
 f

Unnamed_thm < firstorder.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H4 : ~ h
  H5 : d
  H7 : ~ h
  H8 : d
  H3 : e
  H6 : e
  H2 : f
  H1 : f
  H0 : ~ t -> r
  H : ~ t -> r
  ============================
   ~ t

subgoal 2 is:
 f

Unnamed_thm < apply H0.
Toplevel input, characters 6-8:
> apply H0.
>       ^^
Error: Impossible to unify "r" with "~ t".

Unnamed_thm < 2:exact H2.
Toplevel input, characters 8-10:
> 2:exact H2.
>         ^^
Error: The reference H2 was not found in the current environment.

Unnamed_thm < 2:firstorder.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H4 : ~ h
  H5 : d
  H7 : ~ h
  H8 : d
  H3 : e
  H6 : e
  H2 : f
  H1 : f
  H0 : ~ t -> r
  H : ~ t -> r
  ============================
   ~ t

subgoal 2 is:
 f

Unnamed_thm < 2:exact H1.
Toplevel input, characters 8-10:
> 2:exact H1.
>         ^^
Error:
In environment
h : Prop
t : Prop
r : Prop
e : Prop
f : Prop
d : Prop
H5 : ~ h
H7 : d
H6 : ~ h
H8 : d
H1 : e -> f
H2 : e -> f
H3 : ~ t
H4 : ~ t
H : r
H0 : r
The term "H1" has type "e -> f" while it is expected to have type
"f".

Unnamed_thm < intros.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H4 : ~ h
  H5 : d
  H7 : ~ h
  H8 : d
  H3 : e
  H6 : e
  H2 : f
  H1 : f
  H0 : ~ t -> r
  H : ~ t -> r
  ============================
   ~ t

subgoal 2 is:
 f

Unnamed_thm < 2:exact H1.
Toplevel input, characters 8-10:
> 2:exact H1.
>         ^^
Error:
In environment
h : Prop
t : Prop
r : Prop
e : Prop
f : Prop
d : Prop
H5 : ~ h
H7 : d
H6 : ~ h
H8 : d
H1 : e -> f
H2 : e -> f
H3 : ~ t
H4 : ~ t
H : r
H0 : r
The term "H1" has type "e -> f" while it is expected to have type
"f".

Unnamed_thm < intros.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H4 : ~ h
  H5 : d
  H7 : ~ h
  H8 : d
  H3 : e
  H6 : e
  H2 : f
  H1 : f
  H0 : ~ t -> r
  H : ~ t -> r
  ============================
   ~ t

subgoal 2 is:
 f

Unnamed_thm < 2:exact H2.
Toplevel input, characters 8-10:
> 2:exact H2.
>         ^^
Error:
In environment
h : Prop
t : Prop
r : Prop
e : Prop
f : Prop
d : Prop
H5 : ~ h
H7 : d
H6 : ~ h
H8 : d
H1 : e -> f
H2 : e -> f
H3 : ~ t
H4 : ~ t
H : r
H0 : r
The term "H2" has type "e -> f" while it is expected to have type
"f".

Unnamed_thm < intros.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H4 : ~ h
  H5 : d
  H7 : ~ h
  H8 : d
  H3 : e
  H6 : e
  H2 : f
  H1 : f
  H0 : ~ t -> r
  H : ~ t -> r
  ============================
   ~ t

subgoal 2 is:
 f

Unnamed_thm < 2:apply H2.
2 subgoals
  
  h : Prop
  t : Prop
  r : Prop
  e : Prop
  f : Prop
  d : Prop
  H4 : ~ h
  H5 : d
  H7 : ~ h
  H8 : d
  H3 : e
  H6 : e
  H2 : f
  H1 : f
  H0 : ~ t -> r
  H : ~ t -> r
  ============================
   ~ t

subgoal 2 is:
 e

Unnamed_thm < 2:exact H3.
Toplevel input, characters 8-10:
> 2:exact H3.
>         ^^
Error:
In environment
h : Prop
t : Prop
r : Prop
e : Prop
f : Prop
d : Prop
H5 : ~ h
H7 : d
H6 : ~ h
H8 : d
H1 : e -> f
H2 : e -> f
H3 : ~ t
H4 : ~ t
H : r
H0 : r
The term "H3" has type "~ t" while it is expected to have type
"e".

Unnamed_thm <
*)

Section Exercise_Thirteen.
Goal forall h t r e f d:Prop, (((~h) -> (~t -> r)) /\ (h \/ (e -> f)) /\ (~t \/ e) /\ (~h /\ d)) -> (r /\ f).
intros.
elim H.
intro.
intro.
apply conj.
 firstorder.
 apply H.
 apply H1.
 Qed.
